piece control
rarestPiecesOnNetwork
	"Devuelve una colección de indices de piezas ordenada ascendientemente por número de ocurrencias. Las piezas sin ocurrencias o que el peer local ya tiene no aparecen en la colección."

	^ torrentLock
		critical: [ 
			| rarestPieces |
			piecesOnNetwork hasRarityMode
				ifFalse: [ piecesOnNetwork setRarityMode ].
			rarestPieces := (piecesOnNetwork selectExistingPieces reject: [ :index | (bitfield at: index) = 1 ])
				asOrderedCollection ]