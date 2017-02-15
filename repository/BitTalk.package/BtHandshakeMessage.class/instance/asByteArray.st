converting-arrays
asByteArray
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: protocolIdentifier size asByteArray;
		nextPutAll: protocolIdentifier asByteArray;
		nextPutAll: protocolBehaviour asByteArray;
		nextPutAll: (infoHash asByteArrayOfSize: 20);
		nextPutAll: (peerID asByteArrayOfSize: 20).
	^ stream contents