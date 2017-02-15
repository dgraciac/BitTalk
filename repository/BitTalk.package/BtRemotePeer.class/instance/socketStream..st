accessing
socketStream: anObject
	peerLock critical: [ 
		socketStream := anObject.
		socketStream binary .
		socketStream timeout: BtMessage connectionTimeOut .
	]