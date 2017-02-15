operations
updateScrapeResponse: responseBytes
	responseBytes
		ifNil: [ 
			self log: 'scrape: response = nil'.
			scrapeResponse := BtHTTPScrapeResponseBody new
				failureReason: 'no response';
				yourself ]
		ifNotNil: [ 
			| index headers |
			index := responseBytes asString findString: String crlfcrlf.
			headers := responseBytes copyFrom: 1 to: index - 1.
			(#('HTTP/1.0 404 Not Found' 'HTTP/1.1 404 Not Found') anySatisfy: [ :v | (headers asString findString: v) > 0 ])
				ifTrue: [ 
					self log: 'scrape: ' , headers asString.
					scrapeResponse := BtHTTPScrapeResponseBody new
						failureReason: 'status error';
						yourself ]
				ifFalse: [ scrapeResponse := BtHTTPScrapeResponseBody from: (responseBytes copyFrom: index + 4 to: responseBytes size) bedecoded ] ]