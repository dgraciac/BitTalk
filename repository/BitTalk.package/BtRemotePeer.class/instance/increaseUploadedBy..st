accessing
increaseUploadedBy: amount
	peerLock critical: [ uploaded increaseBy: amount ]