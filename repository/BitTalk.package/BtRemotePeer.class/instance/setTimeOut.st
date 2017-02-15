operations
setTimeOut
	peerLock critical: [ socketStream ifNotNil: [ socketStream timeout: BtMessage connectionTimeOut ] ]