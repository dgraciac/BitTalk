handling received messages
handleReceivedHave: message remotePeer: remotePeer
	torrentLock
		critical: [ 
			| index |
			index := message payload index.
			(remotePeer setPieceAt: index)
				ifTrue: [ 
					piecesOnNetwork modifyAt: index by: 1.
					((bitfield at: index) = 0 and: [ remotePeer isInteresting not ])
						ifTrue: [ remotePeer setInteresting ] ] ]