printing
printOn: aStream
	aStream 
		nextPutAll: 'Request[Piece: ';
		nextPutAll: pieceIndex asString;
		nextPutAll: ' | Offset: ';
		nextPutAll: offset asString;
		nextPutAll: ' | Length: ';
		nextPutAll: length asString;
		nextPutAll: ']'