accessing
socketStream
	^peerLock critical: [ socketStream ]