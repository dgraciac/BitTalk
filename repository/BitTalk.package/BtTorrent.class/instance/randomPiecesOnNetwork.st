piece control
randomPiecesOnNetwork
	"Devuelve una colección mezclada de indices de piezas. Las piezas sin ocurrencias o que self ya tiene no aparecen en la colección."

	^ torrentLock
		critical: [ 
			| randomPieces |
			randomPieces := (piecesOnNetwork selectExistingPieces reject: [ :index | (bitfield at: index) = 1 ]) shuffle 
				asOrderedCollection ]