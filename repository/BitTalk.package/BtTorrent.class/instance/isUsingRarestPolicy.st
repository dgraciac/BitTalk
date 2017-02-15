piece control
isUsingRarestPolicy
	^ torrentLock
		critical: [ 
			self isInEndGame not
				and: [ bitfield numBitsSet between: numPiecesDuringMostCommonPolicy and: metainfo numPieces ] ]