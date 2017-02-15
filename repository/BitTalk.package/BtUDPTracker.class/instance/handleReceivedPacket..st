handle received actions
handleReceivedPacket: aPacket
	| responseTime transaction |
	responseTime := Time millisecondClockValue.
	transaction := aPacket transaction.
	(transactionQueue findFirst: [ :elem | elem = transaction ])
		ifNotNil: [ 
			self resetAttempts.
			transaction actionCode = BtUDPTransaction connectActionCode
				ifTrue: [ self handleReceivedConnect: aPacket ]
				ifFalse: [ 
					transaction actionCode = BtUDPTransaction announceActionCode
						ifTrue: [ self handleReceivedAnnounce: aPacket ]
						ifFalse: [ 
							transaction actionCode = BtUDPTransaction scrapeActionCode
								ifTrue: [ self handleReceivedScrape: aPacket ] ] ] ]
		ifNil: [ 
			transaction actionCode = BtUDPTransaction errorActionCode
				ifTrue: [ self handleReceivedError: aPacket ] ]