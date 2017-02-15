P2P
newRemotePeerNotInterested: remotePeer
	remotePeer isLucky
		ifTrue: [ 
			| acceptedPeers |
			acceptedPeers := remotePeers selectAccepted.
			acceptedPeers size < maxPeersAccepted
				ifTrue: [ 
					| competitors |
					competitors := remotePeers selectInterested
						reject: [ :peer | peer isLucky or: [ peer isSnubber or: [ peer isAccepted ] ] ].
					competitors
						ifNotEmpty: [ 
							| bestPeer |
							self isComplete
								ifTrue: [ competitors setCompleteMode ]
								ifFalse: [ competitors setNotCompleteMode ].
							bestPeer := competitors first.
							bestPeer accept ] ] ]