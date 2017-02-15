accessing
isInteresting
	^peerLock critical: [ isInteresting ]