P2P
broadcastCancel: index begin: begin length: length
	torrentLock
		critical: [ 
			| owners blockRequest |
			blockRequest := BtBlockRequest pieceIndex: index offset: begin length: length.
			owners := remotePeers selectWhoIHaveRequested: blockRequest.
			owners doCancel: blockRequest ]