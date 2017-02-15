testing
haveIRequested: aBlockRequest
	^peerLock critical: [ unfulfilledOutgoingRequests includes: aBlockRequest ] 