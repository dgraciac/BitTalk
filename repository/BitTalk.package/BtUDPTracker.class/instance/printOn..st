printing
printOn: aStream
	aStream
		nextPutAll: #udp;
		nextPutAll: '://';
		nextPutAll: domain name;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: '/';
		nextPutAll: path