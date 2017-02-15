piece control
missingPiecesOffsets
	^ torrentLock critical: [ bitfield bitsClear collect: [ :index | index * metainfo pieceLength ] ]