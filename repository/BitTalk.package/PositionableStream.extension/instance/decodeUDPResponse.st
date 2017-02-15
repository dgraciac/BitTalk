*BitTalk
decodeUDPResponse
	| actionCode |
	self size < 4
		ifTrue:[BtWrongPacketSize signal].
	actionCode:= (self next: 4) asInteger.
	(BtUDPTransaction actionCodes includes: actionCode)
		ifFalse: [ BtWrongActionCode signal: 'actionCode has to be any of ', (BtUDPTransaction actionCodes asString) ].		
	4 timesRepeat: [ self back ].
	actionCode = (BtUDPTransaction announceActionCode)
		ifTrue:[^self decodeUDPAnnounceResponse].
	actionCode = (BtUDPTransaction connectActionCode)
		ifTrue:[^self decodeUDPConnectResponse].	
	actionCode = (BtUDPTransaction scrapeActionCode)
		ifTrue:[^self decodeUDPScrapeResponse].
	actionCode = (BtUDPTransaction errorActionCode)
		ifTrue:[^self decodeUDPErrorResponse].
	