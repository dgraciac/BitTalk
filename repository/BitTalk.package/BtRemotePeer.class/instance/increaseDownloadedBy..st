accessing
increaseDownloadedBy: amount
	peerLock critical: [ downloaded increaseBy: amount ]