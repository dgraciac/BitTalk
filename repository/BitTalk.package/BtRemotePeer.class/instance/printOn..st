printing
printOn: aStream
	aStream
		nextPutAll: 'Remote peer[';
		nextPutAll: domain address asIPv4 dotted;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: ']'