printing
printOn: aStream
	aStream
		nextPutAll: 'Bitfield[';
		nextPutAll: numBitsSet asString;
		nextPutAll: ' of ';
		nextPutAll: length asString;
		nextPutAll: ']'