enumerating
selectExistingPieces
	^ (collection select: [ :pieceCounter | pieceCounter count > 0 ] thenCollect: [ :pieceCounter | pieceCounter index ])
		asOrderedCollection