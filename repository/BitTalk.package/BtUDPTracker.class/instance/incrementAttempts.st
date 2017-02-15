private - operations
incrementAttempts
	connectionStatusLock critical:[
		attempts := attempts + 1.
		attempts > MaximumRetries 
			ifTrue:[
				attempts := -1.
				self terminate.
			].		
	]