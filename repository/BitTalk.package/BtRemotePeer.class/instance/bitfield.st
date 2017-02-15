accessing
bitfield
	^ peerLock critical: [ bitfield ]