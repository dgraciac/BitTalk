accessing
isLastAnnounceAnswered
	^connectionStatusLock critical: [ isLastAnnounceAnswered]