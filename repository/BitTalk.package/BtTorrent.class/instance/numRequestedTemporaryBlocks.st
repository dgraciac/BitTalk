piece control
numRequestedTemporaryBlocks
	^torrentLock critical: [ temporaryPieces inject: 0 into: [ :sum :tempPiece | sum + (tempPiece numRequested )]  ]