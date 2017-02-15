operations
at: pieceIndex
"Devuelvo el valor del bit en pieceIndex"
	|   bitIndex byte   |
	byte:= self byteAt: pieceIndex .
	bitIndex:= self class bitIndex: pieceIndex .
	^byte bitAt: 9 - bitIndex.