accessing
pieceLengthOf: pieceIndex
	self checkPieceIndex: pieceIndex.
	^pieceIndex + 1 = self numPieces
		ifTrue:[self lastPieceLength ]
		ifFalse:[self pieceLength ]  