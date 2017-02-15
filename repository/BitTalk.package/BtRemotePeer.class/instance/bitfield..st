accessing
bitfield: anObject
	peerLock critical: [ bitfield := anObject ]