piece control
updatePiecesOnNetwork
	torrentLock
		critical: [ 
			piecesOnNetwork := (piecesOnNetwork isNil or: [ piecesOnNetwork hasRarityMode ])
				ifTrue: [ BtPiecesOnNetwork rarityMode: metainfo numPieces ]
				ifFalse: [ BtPiecesOnNetwork indexMode: metainfo numPieces ] ]