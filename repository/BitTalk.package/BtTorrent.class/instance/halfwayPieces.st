piece control
halfwayPieces
	^ torrentLock
		critical: [ 
			(0 to: metainfo numPieces - 1) asOrderedCollection
				select: [ :pieceIndex | (bitfield at: pieceIndex) = 0 and: [ (temporaryPieces at: pieceIndex + 1) isHalfway ] ] ]