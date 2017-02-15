tests-comparing
testPriorOrEqualTo
	| announce scrape connect |
	announce:=(BtUDPTransaction new actionCode: BtUDPTransaction announceActionCode).
	scrape:=(BtUDPTransaction new actionCode: BtUDPTransaction scrapeActionCode).
	connect:=(BtUDPTransaction new actionCode: BtUDPTransaction connectActionCode).

	self assert: (announce priorOrEqualTo: announce).
	self assert: (announce priorOrEqualTo: scrape).
	self deny: (announce priorOrEqualTo: connect).
	
	self assert: (scrape priorOrEqualTo: announce).
	self assert: (scrape priorOrEqualTo: scrape).
	self deny: (scrape priorOrEqualTo: connect).			
			
	self assert: (connect priorOrEqualTo: announce).
	self assert: (connect priorOrEqualTo: scrape).
	self assert: (connect priorOrEqualTo: connect).	