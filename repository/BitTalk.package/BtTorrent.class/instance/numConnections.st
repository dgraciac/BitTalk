P2P
numConnections
	^torrentLock critical: [ remotePeers size ]