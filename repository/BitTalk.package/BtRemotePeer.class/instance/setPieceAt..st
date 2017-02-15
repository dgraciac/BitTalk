piece control
setPieceAt: index
	^ peerLock critical: [ bitfield set: index ]