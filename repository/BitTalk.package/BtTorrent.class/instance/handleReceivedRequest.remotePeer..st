handling received messages
handleReceivedRequest: message remotePeer: remotePeer
	| payload block pieceIndex |
	remotePeer isAccepted
		ifFalse: [ ^ self ].
	payload := message payload.
	pieceIndex := payload index.
	torrentLock
		critical: [ 
			remotePeer isAccepted
				ifTrue: [ 
					(bitfield at: pieceIndex) = 1
						ifTrue: [ 
							block := fileCollection readOffset: pieceIndex * metainfo pieceLength + payload begin amount: payload length.
							remotePeer sendPiece: payload index begin: payload begin block: block.
							remotePeer increaseDownloadedBy: block size.
							self increaseUploadedBy: payload length.
							remotePeers
								remove: remotePeer;
								add: remotePeer ] ] ]