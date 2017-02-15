P2P
maxConnections: anInteger
	torrentLock
		critical: [ 
			maxConnections := anInteger.
			self reduceExcessOfRemotePeers ]