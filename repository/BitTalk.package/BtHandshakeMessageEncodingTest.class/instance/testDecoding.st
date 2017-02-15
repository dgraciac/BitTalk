tests
testDecoding
	| stream peerID infoHash handshake behaviour |
	behaviour := BtProtocolBehaviour new.
	infoHash := 12345678901234567890.
	peerID := 'qwertyuiopa' asByteArray asInteger.
	stream := WriteStream with: ByteArray new.
	stream
		nextPut: BtHandshakeMessage protocolIdentifier size;
		nextPutAll: BtHandshakeMessage protocolIdentifier asByteArray;
		nextPutAll: behaviour asByteArray;
		nextPutAll: (infoHash asByteArrayOfSize: 20);
		nextPutAll: (peerID asByteArrayOfSize: 20).
	handshake := stream contents decodeHandshake.
	self
		assert: handshake protocolIdentifier = BtHandshakeMessage protocolIdentifier;
		assert: handshake protocolBehaviour = behaviour;
		assert: handshake infoHash = infoHash;
		assert: handshake peerID = peerID