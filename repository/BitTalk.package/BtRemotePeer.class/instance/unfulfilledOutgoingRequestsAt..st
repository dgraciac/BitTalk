operations
unfulfilledOutgoingRequestsAt: pieceIndex
	^peerLock critical: [ unfulfilledOutgoingRequests select:[:blockRequest| blockRequest pieceIndex = pieceIndex ]  ]