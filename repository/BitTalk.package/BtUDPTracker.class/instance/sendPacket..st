private - operations
sendPacket: aPacket
	socket sendData: aPacket asByteArray toHost: domain address asIPv4 port: port.
	aPacket transaction actionCode = BtUDPTransaction announceActionCode
		ifTrue: [ 
			connectionStatusLock
				critical: [ 
					isLastAnnounceAnswered := false.
					lastAnnounceRequestTime := Time millisecondClockValue ] ]
		ifFalse: [ 
			aPacket transaction actionCode = BtUDPTransaction scrapeActionCode
				ifTrue: [ lastScrapeRequestTime := Time millisecondClockValue ]
				ifFalse: [ 
					aPacket transaction actionCode = BtUDPTransaction connectActionCode
						ifTrue: [ lastConnectRequestTime := Time millisecondClockValue ] ] ].
	self incrementAttempts.
	self
		log:
			'SENT: ' , aPacket asString , ' to: ' , domain address asIPv4 dotted , ':' , port asString , ' -> Seconds to retry: '
				, self secondsToNextAttempt asString