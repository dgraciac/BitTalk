accessing
secondsSinceLastAnnounce
	^lastAnnounceResponseTime 
		ifNil: [ nil ]
		ifNotNil: [ (Time millisecondsSince: lastAnnounceResponseTime) / 1000 ] 