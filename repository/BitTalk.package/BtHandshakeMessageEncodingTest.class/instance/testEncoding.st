tests
testEncoding
	| infoHash peerID handshake stream |
	infoHash := (2 raisedTo: 160) - 1 atRandom.
	peerID := (2 raisedTo: 160) - 1 atRandom.
	handshake := BtHandshakeMessage new.
	handshake
		protocolIdentifier: BtHandshakeMessage protocolIdentifier;
		protocolBehaviour: BtProtocolBehaviour new;
		infoHash: infoHash;
		peerID: peerID.
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: BtHandshakeMessage protocolIdentifier size asByteArray;
		nextPutAll: BtHandshakeMessage protocolIdentifier asByteArray;
		nextPutAll: BtProtocolBehaviour new asByteArray;
		nextPutAll: (infoHash asByteArrayOfSize: 20);
		nextPutAll: (peerID asByteArrayOfSize: 20).
	self assert: handshake asByteArray = stream contents