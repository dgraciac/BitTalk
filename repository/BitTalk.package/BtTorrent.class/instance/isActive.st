testing
isActive
	^ torrentLock critical: [ isActive ]