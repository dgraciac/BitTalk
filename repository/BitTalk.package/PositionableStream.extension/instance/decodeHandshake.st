*BitTalk
decodeHandshake
	| handshake length |
	handshake := BtHandshakeMessage new.
	length := self decodeProtocolIdentifierLength.
	^handshake
		protocolIdentifier: (self decodeProtocolIdentifier: length);
		protocolBehaviour: self decodeProtocolBehaviour;
		infoHash: self decodeInfoHash;
		peerID: self decodePeerID.