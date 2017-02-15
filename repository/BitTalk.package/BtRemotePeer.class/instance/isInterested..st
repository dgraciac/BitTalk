accessing
isInterested: anObject
	peerLock critical: [ isInterested := anObject ]