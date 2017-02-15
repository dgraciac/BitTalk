P2P
checkHandshake: handshake
	(handshake protocolIdentifier = BtHandshakeMessage protocolIdentifier and: [ handshake infoHash = self hash ])
		ifFalse: [ BtHandshakeError signal ]