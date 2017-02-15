printing
printOn: aStream
	aStream
		nextPutAll: #http;
		nextPutAll: '://';
		nextPutAll: domain name;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: '/';
		nextPutAll: path