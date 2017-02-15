tests
testEncoding
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (BtUDPPacket firstConnectionID asByteArrayOfSize: 8);
		nextPutAll: (0 asByteArrayOfSize: 4);
		nextPutAll: (connectTransactionID asByteArrayOfSize: 4).
	self assert: connectRequest asByteArray = stream contents.
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (connectionID asByteArrayOfSize: 8);
		nextPutAll: (1 asByteArrayOfSize: 4);
		nextPutAll: (announceTransactionID asByteArrayOfSize: 4);
		nextPutAll: (ByteArray new: 82).
	self assert: announceRequest asByteArray = stream contents.	
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (connectionID asByteArrayOfSize: 8);
		nextPutAll: (2 asByteArrayOfSize: 4);
		nextPutAll: (scrapeTransactionID asByteArrayOfSize: 4);
		nextPutAll: (0 asByteArrayOfSize: 20);
		nextPutAll: (1 asByteArrayOfSize: 20);
		nextPutAll: (2 asByteArrayOfSize: 20);
		nextPutAll: (3 asByteArrayOfSize: 20).
	self assert: scrapeRequest asByteArray = stream contents.			
	