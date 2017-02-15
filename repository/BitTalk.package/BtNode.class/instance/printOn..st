printing
printOn: aStream
	aStream
		nextPutAll: 'Node[';
		nextPutAll: domain address asIPv4 dotted;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: ']'