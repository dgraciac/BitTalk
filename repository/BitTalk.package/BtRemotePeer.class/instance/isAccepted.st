accessing
isAccepted
	^peerLock critical: [ isAccepted ]