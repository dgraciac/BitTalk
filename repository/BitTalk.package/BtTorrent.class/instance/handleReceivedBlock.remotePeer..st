handling received messages
handleReceivedBlock: message remotePeer: remotePeer
	| block pieceIndex offset tempPiece blockRequest |
	pieceIndex := message payload index.
	offset := message payload begin.
	block := message payload block.
	blockRequest := BtBlockRequest pieceIndex: pieceIndex offset: offset length: block size.
	torrentLock
		critical: [ 
			(remotePeer unfulfilledOutgoingRequests includes: blockRequest)
				ifTrue: [ 
					self broadcastCancel: pieceIndex begin: offset length: block size.
					self increaseDownloadedBy: block size.
					tempPiece := temporaryPieces at: pieceIndex + 1.
					tempPiece
						at: offset put: block;
						clearRequest: offset.
					tempPiece isComplete
						ifTrue: [ 
							| piece |
							self log: 'TEMPORARY PIECE ' , pieceIndex asString , ' COMPLETE'.
							piece := tempPiece asByteArray.
							(SHA1 hashStream: piece readStream) = (metainfo sha1Of: pieceIndex) asByteArray
								ifTrue: [ 
									fileCollection writeOffset: pieceIndex * metainfo pieceLength data: piece.
									bitfield set: pieceIndex.
									remotePeers doUpdateInterest: bitfield .
									self broadcastHave: pieceIndex ]
								ifFalse: [ self log: 'TEMPORARY PIECE ' , pieceIndex asString , ' CORRUPT' ].
							tempPiece reset ].
					remotePeer updateLastBlockReceivedTime.
					remotePeer increaseUploadedBy: block size.
					remotePeers
						remove: remotePeer;
						add: remotePeer.
					remotePeer unfulfilledOutgoingRequests remove: blockRequest ifAbsent: [ nil ] ] ]