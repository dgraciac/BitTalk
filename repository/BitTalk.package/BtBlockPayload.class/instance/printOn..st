printing
printOn: aStream
	aStream
		nextPutAll: index asString;
		nextPutAll: ' ';
		nextPutAll: begin asString;
		nextPutAll: ' ';
		nextPutAll: 'block size->';
		nextPutAll: block size asString