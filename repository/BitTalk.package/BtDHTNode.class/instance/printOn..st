printing
printOn: aStream
	aStream
		nextPutAll: 'DHTNode[';
		nextPutAll: (id asByteArrayOfSize:20) asString;
		nextPutAll: '/';
		nextPutAll: domain address asIPv4 dotted;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: ']'