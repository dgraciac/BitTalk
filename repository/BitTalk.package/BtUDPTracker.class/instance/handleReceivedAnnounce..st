handle received actions
handleReceivedAnnounce: aPacket
	lastAnnounceResponseTime := Time millisecondClockValue.
	announceResponse := aPacket.
	connectionStatusLock critical: [ isLastAnnounceAnswered := true ]