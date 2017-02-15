accessing
isAccepted: anObject
	peerLock critical: [ isAccepted := anObject ]