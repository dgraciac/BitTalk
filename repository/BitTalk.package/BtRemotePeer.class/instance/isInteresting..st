accessing
isInteresting: anObject
	peerLock critical: [ isInteresting := anObject ]