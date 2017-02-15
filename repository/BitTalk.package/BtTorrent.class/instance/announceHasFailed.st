peer discovery
announceHasFailed
	self currentTracker isUDP
		ifTrue:[ self waitForUDPAnnounceResponse ]. 
	^self currentTracker announceHasFailed