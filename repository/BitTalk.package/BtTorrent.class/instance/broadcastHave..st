P2P
broadcastHave: pieceIndex
	torrentLock critical: [ remotePeers doHave: pieceIndex ].
	