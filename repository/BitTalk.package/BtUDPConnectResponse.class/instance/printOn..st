printing
printOn: aStream
	aStream
		nextPutAll: 'UDP Packet: ';
		nextPutAll: transaction asString;
		nextPutAll: '. ConnectionID: ';
		nextPutAll: connectionID asString