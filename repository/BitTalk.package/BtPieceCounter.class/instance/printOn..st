printing
printOn: aStream
	aStream
		nextPutAll: index asString;
		nextPutAll: '->';
		nextPutAll: count asString