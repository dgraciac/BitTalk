piece control
missingPiecesOnNetwork
	^ torrentLock critical: [ piecesOnNetwork selectMissingPieces ]