measuring rates
increaseDownloadedBy: amount
	torrentLock critical: [ downloaded increaseBy: amount ]