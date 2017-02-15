piece control
lowestPiecesOnNetworkGreaterThan: index
	"Devuelve una colección de indices de piezas ordenada ascendientemente por número de índice. Las piezas sin ocurrencias, o que el peer local ya tiene, o que tienen un índice menor o igual que index no aparecen en la colección."

	^ torrentLock
		critical: [ 
			| lowestPieces |
			piecesOnNetwork hasIndexMode
				ifFalse: [ piecesOnNetwork setIndexMode ].
			lowestPieces := (piecesOnNetwork selectExistingPieces reject: [ : i | (bitfield at: i) = 1 or:[i<=index] ])
				asOrderedCollection ]