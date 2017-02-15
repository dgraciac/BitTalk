peer discovery
updateAnnounceRequest
	self currentTracker isHTTP 
		ifTrue: [ self currentTracker announceRequest: self newHTTPAnnounceRequest ].
	self currentTracker isUDP
		ifTrue:[self currentTracker announceRequest: self newUDPAnnounceRequest ].							