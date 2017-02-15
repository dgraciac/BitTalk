piece control
requestedTemporaryPieces
	^ (0 to: metainfo numPieces - 1)
		select: [ :pieceIndex | (bitfield at: pieceIndex) = 0 and: [ (temporaryPieces at: pieceIndex + 1) hasAnyRequested ] ]