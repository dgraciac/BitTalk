piece control
isUsingMostCommonPolicy
	^ torrentLock
		critical: [ self isInEndGame not and: [ bitfield numBitsSet between: 0 and: numPiecesDuringMostCommonPolicy - 1 ] ]