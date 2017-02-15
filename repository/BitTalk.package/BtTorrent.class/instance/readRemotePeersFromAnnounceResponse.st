peer discovery
readRemotePeersFromAnnounceResponse
	| newRemotePeers |
	newRemotePeers := self currentTracker isHTTP
		ifTrue: [ self readRemotePeersFromHTTPAnnounceResponse ]
		ifFalse: [ self readRemotePeersFromUDPAnnounceResponse ].
	^ newRemotePeers
		do: [ :peer | 
			peer
				bitfield: (BtBitfield new: metainfo numPieces);
				debug: debug ]