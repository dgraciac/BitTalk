operations
secondsSinceLastReceivedMessage
	^ peerLock
		critical: [ 
			lastMessageReceivedTime ifNil: [ lastMessageReceivedTime := Time millisecondClockValue ].
			(Time millisecondsSince: lastMessageReceivedTime) / 1000 ]