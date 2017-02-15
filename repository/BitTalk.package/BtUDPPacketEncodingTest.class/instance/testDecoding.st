tests
testDecoding
	| connectResponse announceResponse scrapeResponse  errorResponse |
	connectResponse := BtUDPConnectResponse new.
	connectResponse transaction: connectTransaction.
	connectResponse connectionID: connectionID.
	self assert: connectResponse = bytesConnectResponse decodeUDPResponse.
	announceResponse := BtUDPAnnounceResponse new.
	announceResponse transaction: announceTransaction.
	self assert: announceResponse = bytesAnnounceResponse decodeUDPResponse.	
	scrapeResponse := BtUDPScrapeResponse new.
	scrapeResponse transaction: scrapeTransaction.
	self assert: scrapeResponse = bytesScrapeResponse decodeUDPResponse.
	errorResponse := BtUDPErrorResponse new.
	errorResponse transaction: errorTransaction.
	self assert: errorResponse = bytesErrorResponse decodeUDPResponse.		