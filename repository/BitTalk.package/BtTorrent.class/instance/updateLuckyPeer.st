P2P
updateLuckyPeer
	torrentLock
		critical: [ 
			| oldLuckyPeer candidates newLuckyPeer |
			oldLuckyPeer := remotePeers detectLucky.
			candidates := oldLuckyPeer
				ifNil: [ remotePeers rejectAccepted ]
				ifNotNil: [ 
					remotePeers rejectAccepted
						add: oldLuckyPeer;
						yourself ].
			newLuckyPeer := [ candidates atRandom ]
				on: Error
				do: [ :ex | ex return: nil ].
			oldLuckyPeer ~= newLuckyPeer
				ifTrue: [ 
					oldLuckyPeer
						ifNotNil: [ 
							oldLuckyPeer
								notAccept;
								isLucky: false ].
					newLuckyPeer
						ifNotNil: [ 
							maxPeersAccepted > 0
								ifTrue: [ 
									newLuckyPeer
										accept;
										isLucky: true ] ] ]
				ifFalse: [ 
					oldLuckyPeer
						ifNotNil: [ 
							maxPeersAccepted > 0
								ifFalse: [ 
									oldLuckyPeer
										notAccept;
										isLucky: false ] ] ] ]