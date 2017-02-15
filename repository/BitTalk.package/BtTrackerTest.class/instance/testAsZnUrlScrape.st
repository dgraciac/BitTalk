tests-converting
testAsZnUrlScrape
	|  tracker |
	tracker:= BtTracker on: 'http://www.todotorrents.com:2710/announce' asZnUrl .
	self assert: tracker asString asZnUrl asZnUrlScrape = 'http://www.todotorrents.com:2710/scrape' asZnUrl.
	
	tracker:= BtTracker on: 'http://www.todotorrents.com:2710/x/announce' asZnUrl.
	self assert: tracker asString asZnUrl asZnUrlScrape =  'http://www.todotorrents.com:2710/x/scrape' asZnUrl.
	
	tracker:= BtTracker on: 'http://www.todotorrents.com:2710/announce.php' asZnUrl.
	self assert: tracker asString asZnUrl asZnUrlScrape = 'http://www.todotorrents.com:2710/scrape.php' asZnUrl.
	
	tracker:= BtTracker on: 'http://www.todotorrents.com:2710/a' asZnUrl.
	self should: [ tracker asString asZnUrl asZnUrlScrape ] raise: BtAnnounceWordNotFound .	
	
	tracker:= BtTracker on: 'http://www.todotorrents.com:2710/x%064announce' asZnUrl.
	self should: [ tracker asString asZnUrl asZnUrlScrape ] raise: BtAnnounceWordNotFound .	