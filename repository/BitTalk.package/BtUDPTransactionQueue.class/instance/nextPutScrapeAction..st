private
nextPutScrapeAction: aTransaction
	(items anySatisfy: [ :x | x actionCode = BtUDPTransaction scrapeActionCode ])
		ifFalse: [ items add: aTransaction ]