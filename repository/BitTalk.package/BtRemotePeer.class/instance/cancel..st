operations
cancel: aBlockRequest
	peerLock
		critical: [ 
			self sendCancel: aBlockRequest pieceIndex begin: aBlockRequest offset length: aBlockRequest length.
			unfulfilledOutgoingRequests remove: aBlockRequest ifAbsent: [ nil ] ]