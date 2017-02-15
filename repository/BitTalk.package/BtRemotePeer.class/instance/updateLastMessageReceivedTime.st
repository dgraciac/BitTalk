operations
updateLastMessageReceivedTime
	peerLock critical: [ lastMessageReceivedTime := Time millisecondClockValue ]