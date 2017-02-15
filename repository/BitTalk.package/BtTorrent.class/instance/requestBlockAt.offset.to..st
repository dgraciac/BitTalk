private - P2P - requesting
requestBlockAt: pieceIndex offset: offset to: remotePeer
	torrentLock
		critical: [ 
			| tempPiece blockRequest |
			tempPiece := temporaryPieces at: pieceIndex + 1.
			blockRequest := BtBlockRequest pieceIndex: pieceIndex offset: offset length: (tempPiece blockSizeOf: offset).
			remotePeer request: blockRequest.
			tempPiece setRequest: offset.
			self
				log:
					'REQUEST: ' , pieceIndex asString , ' ' , offset asString , ' ' , (tempPiece blockSizeOf: offset) asString , ' TO: '
						, remotePeer asString ]