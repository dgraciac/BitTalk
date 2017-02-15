printing
printOn: aStream
	aStream
		nextPutAll: index asString;
		nextPutAll: ' ';
		nextPutAll: begin asString;
		nextPutAll: ' ';
		nextPutAll: length asString