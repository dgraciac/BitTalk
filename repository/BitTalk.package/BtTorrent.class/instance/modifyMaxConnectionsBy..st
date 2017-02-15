P2P
modifyMaxConnectionsBy: anInteger
	torrentLock critical: [ self maxConnections: (maxConnections + anInteger max: 0) ]