accessing
isLucky
	^ peerLock critical: [ isLucky ]