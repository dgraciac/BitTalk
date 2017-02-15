testing
isConnected
	^peerLock critical: [
		socketStream 
			ifNil: [ false ]
			ifNotNil: [ socketStream isConnected ]  
	] 