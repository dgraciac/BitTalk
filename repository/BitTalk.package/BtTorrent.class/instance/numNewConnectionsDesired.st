peer discovery
numNewConnectionsDesired
	^ torrentLock critical: [ (maxConnections - remotePeers size max: 0) ]