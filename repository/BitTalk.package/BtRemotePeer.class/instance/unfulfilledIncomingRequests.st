accessing
unfulfilledIncomingRequests
	^ peerLock
		critical: [ 
			inMessageQueue selectRequests
				collect: [ :request | 
					| payload |
					payload := request payload.
					BtBlockRequest pieceIndex: payload index offset: payload begin length: payload length ] ]