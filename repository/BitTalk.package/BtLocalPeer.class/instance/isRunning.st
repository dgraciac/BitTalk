accessing
isRunning
	^ localPeerLock critical: [ isRunning ]