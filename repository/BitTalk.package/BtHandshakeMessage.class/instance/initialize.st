initialize-release
initialize
	super initialize.
	protocolIdentifier:= '' .
	protocolBehaviour:= BtProtocolBehaviour new.
	infoHash:= (ByteArray new:20).
	peerID:= (ByteArray new:20).