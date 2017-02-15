piece control
left
	^ torrentLock
		critical: [ 
			| pieceLength havePieces numPieces length |
			pieceLength := metainfo pieceLength.
			havePieces := bitfield numBitsSet.
			numPieces := metainfo numPieces.
			length := metainfo length.
			(bitfield at: numPieces - 1) = 1
				ifTrue: [ length - ((havePieces - 1) * pieceLength + metainfo lastPieceLength) ]
				ifFalse: [ length - (havePieces * pieceLength) ] ]