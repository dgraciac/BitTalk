accessing
establishmentTime
	^connectionStatusLock critical: [ establishmentTime ]