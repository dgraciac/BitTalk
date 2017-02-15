tests
testAsString
	| scrapeRequest correctQuery |
	scrapeRequest := BtHTTPScrapeQuery new.
	scrapeRequest infoHashCollection add: 875394473277859172160916210299123458408831778816 ; add: 875394473272859172160916210299123458408831878816.
	
 	correctQuery:='info_hash=%99V%0B%B92%AC%18%00%00%00%00%00%00%00%00%00%00%00%00%00&info_hash=%99V%0B%B9.%E9%20%F7%95%12%DC%93%7F%85%E4%B0%00%01%86%A0'.
	self assert: scrapeRequest asString = correctQuery.