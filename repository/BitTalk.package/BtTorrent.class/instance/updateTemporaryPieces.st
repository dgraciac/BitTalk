piece control
updateTemporaryPieces
	torrentLock
		critical: [ 
			temporaryPieces := (0 to: metainfo numPieces - 1)
				inject: OrderedCollection new
				into: [ :collection :index | 
					collection
						add: (BtTemporaryPiece length: (metainfo pieceLengthOf: index) blockSize: blockSize);
						yourself ] ]