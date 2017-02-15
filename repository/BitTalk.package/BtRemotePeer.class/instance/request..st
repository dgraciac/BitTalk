operations
request: aBlockRequest
	peerLock
		critical: [ 
			self sendRequest: aBlockRequest pieceIndex begin: aBlockRequest offset length: aBlockRequest length.
			(unfulfilledOutgoingRequests includes: aBlockRequest)
				ifFalse: [ unfulfilledOutgoingRequests add: aBlockRequest ] ]