operations
scrape
	| response httpGET |
	httpGET := self newGET: self asString asZnUrl asZnUrlScrape pathPrintString query: scrapeRequest asString.
	response := self sendGET: httpGET.
	self updateScrapeResponse: response