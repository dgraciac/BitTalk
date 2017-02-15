private
checkPieceIndex: pieceIndex
	pieceIndex + 1 > self numPieces ifTrue:[self error:'bad piece index']