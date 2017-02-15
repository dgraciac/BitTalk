as yet unclassified
infoHash: infoHash id: peerID
	| handshake |
	handshake := self new.
	handshake
		protocolIdentifier: ProtocolIdentifier;
		protocolBehaviour: BtProtocolBehaviour new;
		infoHash: infoHash;
		peerID: peerID.
	^ handshake