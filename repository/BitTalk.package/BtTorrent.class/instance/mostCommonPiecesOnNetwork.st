piece control
mostCommonPiecesOnNetwork
	"Devuelve una colección de indices de piezas ordenada descendientemente por número de ocurrencias. Las piezas sin ocurrencias o que el peer local ya tiene no aparecen en la colección."

	^ torrentLock
		critical: [ 
			| mostCommonPieces |
			piecesOnNetwork hasRarityMode
				ifFalse: [ piecesOnNetwork setRarityMode ].
			mostCommonPieces := (piecesOnNetwork selectExistingPieces reject: [ :index | (bitfield at: index) = 1 ]) reversed
				asOrderedCollection ]