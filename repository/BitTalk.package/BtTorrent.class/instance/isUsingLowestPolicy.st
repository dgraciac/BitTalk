piece control
isUsingLowestPolicy
	^ torrentLock
		critical: [ self isInEndGame not and: [ self isUsingStreamingMode ] ]