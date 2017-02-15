piece control
lowestPiecesOnNetwork
	^torrentLock critical: [ self lowestPiecesOnNetworkGreaterThan: -1 ]