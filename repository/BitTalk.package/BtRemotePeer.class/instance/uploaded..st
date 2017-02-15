accessing
uploaded: anObject
	peerLock critical: [ uploaded := anObject ].