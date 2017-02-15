running
setUpEncoded
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (0 asByteArrayOfSize: 4);
		nextPutAll: (connectTransactionID asByteArrayOfSize: 4);
		nextPutAll: (connectionID asByteArrayOfSize: 8).
	bytesConnectResponse := stream contents.
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (1 asByteArrayOfSize: 4);
		nextPutAll: (announceTransactionID asByteArrayOfSize: 4);
		nextPutAll: (0 asByteArrayOfSize: 4);
		nextPutAll: (0 asByteArrayOfSize: 4);
		nextPutAll: (0 asByteArrayOfSize: 4).
	bytesAnnounceResponse := stream contents.
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (2 asByteArrayOfSize: 4);
		nextPutAll: (scrapeTransactionID asByteArrayOfSize: 4).
	bytesScrapeResponse := stream contents.
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: (3 asByteArrayOfSize: 4);
		nextPutAll: (errorTransactionID asByteArrayOfSize: 4).
	bytesErrorResponse := stream contents.	