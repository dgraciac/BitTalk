piece control
halfwayNotFullRequestedPieces
	^torrentLock
		critical: [ 
			| indeces |
			indeces := self halfwayPieces reject: [ :index | (temporaryPieces at: index + 1) allMissingBlocksAreRequested ].
			indeces
				sort: [ :index1 :index2 | 
					| tempPiece1 tempPiece2 |
					tempPiece1 := temporaryPieces at: index1 + 1.
					tempPiece2 := temporaryPieces at: index2 + 1.
					tempPiece1 requestedBlocks size >= tempPiece2 requestedBlocks size ].
			indeces	 
		]