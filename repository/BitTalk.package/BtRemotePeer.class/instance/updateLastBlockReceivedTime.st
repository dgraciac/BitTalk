operations
updateLastBlockReceivedTime
	peerLock critical: [ lastBlockReceivedTime := Time millisecondClockValue ]