peer discovery
readRemotePeersFromUDPAnnounceResponse
	| aNodeCollection  newRemotePeers |
	aNodeCollection := self currentTracker announceResponse nodeCollection.
	newRemotePeers:= BtRemotePeerCollection new.
	aNodeCollection asOrderedCollection
		do: [ :node | 
			| remotePeer |
			remotePeer := BtRemotePeer new.
			remotePeer domain address: node domain address.
			remotePeer port: node port.
			newRemotePeers add: remotePeer ].
	^ newRemotePeers