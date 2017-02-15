operations
secondsSinceLastSentMessage
	^ peerLock
		critical: [ 
			lastMessageSentTime ifNil: [ lastMessageSentTime := Time millisecondClockValue ].
			(Time millisecondsSince: lastMessageSentTime) / 1000 ]