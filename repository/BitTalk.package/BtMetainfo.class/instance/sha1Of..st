accessing
sha1Of: pieceIndex
	self checkPieceIndex: pieceIndex.
	^ self allSha1 copyFrom: pieceIndex * Sha1Length + 1 to: Sha1Length * (pieceIndex + 1)