printing
printOn: aStream
	aStream
		nextPutAll: 'Local peer[';
		nextPutAll: domain address asIPv4 dotted;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: ']'