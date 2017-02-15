peer discovery
readRemotePeersFromHTTPAnnounceResponse
	| peersBinary stream newRemotePeers |
	peersBinary := self currentTracker announceResponse atPeers asByteArray.
	stream := peersBinary readStream.
	newRemotePeers:= BtRemotePeerCollection new.
	[ stream atEnd ]
		whileFalse: [ 
			| remotePeer |
			remotePeer := BtRemotePeer new.
			remotePeer domain address: (stream next: 4) asInteger.
			remotePeer port: (stream next: 2) asInteger.
			newRemotePeers add: remotePeer ].
	^ newRemotePeers	