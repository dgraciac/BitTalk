accessing
connectionID
	^connectionStatusLock critical: [ connectionID ]