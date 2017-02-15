private - operations
updateScrapeRequest: transaction
	^scrapeRequest
		transaction: transaction;
		connectionID: self connectionID