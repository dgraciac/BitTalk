printing
printOn: aStream
	aStream
		nextPutAll: 'UDP Packet: ';
		nextPutAll: transaction asString;
		nextPutAll: '. Message: ';
		nextPutAll: message