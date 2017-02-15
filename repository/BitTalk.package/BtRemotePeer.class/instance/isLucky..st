accessing
isLucky: anObject
	peerLock critical: [isLucky := anObject]