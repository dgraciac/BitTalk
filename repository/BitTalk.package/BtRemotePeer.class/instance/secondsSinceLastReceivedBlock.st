operations
secondsSinceLastReceivedBlock
	^peerLock critical: [  
		lastBlockReceivedTime ifNil: [ lastBlockReceivedTime := Time millisecondClockValue  ].
		(Time millisecondsSince: lastBlockReceivedTime) / 1000	
	]