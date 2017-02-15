accessing
unfulfilledOutgoingRequests
	^peerLock critical: [ unfulfilledOutgoingRequests ]