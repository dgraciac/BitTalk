P2P
discardSeeders
	torrentLock critical: [ remotePeers selectSeeders do: [ :peer | self discardRemotePeer: peer ] ]