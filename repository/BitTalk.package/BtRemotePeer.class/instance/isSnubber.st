accessing
isSnubber
	^ self secondsSinceLastReceivedBlock > (BtTorrent maxTimeWithoutReceivedBlocks)