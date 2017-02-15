private - operations
giveHandshake: remotePeer
	| handshake |
	handshake := remotePeer receiveHandshake.
	remotePeer id: handshake peerID.
	handshake protocolIdentifier = BtHandshakeMessage protocolIdentifier
		ifFalse: [ BtHandshakeError signal ]
		ifTrue: [ 
			| infoHash torrent |
			infoHash := handshake infoHash.
			torrent := torrents detect: [ :each | each hash = infoHash ] ifNone: [ nil ].
			torrent
				ifNil: [ BtHandshakeError signal ]
				ifNotNil: [ 
					torrent numConnections < torrent maxConnections
						ifTrue: [ 
							remotePeer sendHandshake: torrent hash id: id.
							remotePeer resume.
							^ torrent ]
						ifFalse: [ BtMaxConnectionsReached signal ] ] ]