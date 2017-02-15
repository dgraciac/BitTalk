P2P
reduceExcessOfRemotePeers
	torrentLock
		critical: [ 
			self isComplete
				ifTrue: [ remotePeers setCompleteMode ]
				ifFalse: [ remotePeers setNotCompleteMode ].
			[ remotePeers isNotEmpty and: [ remotePeers size > maxConnections ] ]
				whileTrue: [ self discardRemotePeer: remotePeers last ] ]