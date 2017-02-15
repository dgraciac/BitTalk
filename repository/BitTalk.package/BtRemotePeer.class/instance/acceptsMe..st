accessing
acceptsMe: anObject
	peerLock critical: [ acceptsMe := anObject ]