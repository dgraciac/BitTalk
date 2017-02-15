accessing
lastAnnounceRequestTime
	^connectionStatusLock critical: [ lastAnnounceRequestTime ]