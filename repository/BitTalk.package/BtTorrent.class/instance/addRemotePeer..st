P2P
addRemotePeer: remotePeer
	torrentLock
		critical: [ 
			(remotePeers includes: remotePeer)
				ifFalse: [ 
					remotePeers add: remotePeer.
					self isComplete
						ifTrue: [ self lazyBitfieldTo: remotePeer ]
						ifFalse: [ 
							bitfield numBitsSet > 0
								ifTrue: [ remotePeer sendBitfield: bitfield ] ] ]
				ifTrue: [ remotePeer terminate ; destroy ] ]