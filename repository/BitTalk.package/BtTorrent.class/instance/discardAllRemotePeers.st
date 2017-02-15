P2P
discardAllRemotePeers
	torrentLock critical: [ [ remotePeers isEmpty ] whileFalse: [ self discardRemotePeer: remotePeers first ] ]