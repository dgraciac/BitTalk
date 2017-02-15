initialize-release
numPieces: numPieces
	collection removeAll.
	0 to: numPieces - 1 do: [ :index | collection addLast: (BtPieceCounter index: index count: 0) ]