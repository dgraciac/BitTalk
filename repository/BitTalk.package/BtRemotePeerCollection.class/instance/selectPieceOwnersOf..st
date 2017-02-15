enumerating
selectPieceOwnersOf: pieceIndex
	^ self select: [ :peer | (peer bitfield at: pieceIndex) = 1 ]