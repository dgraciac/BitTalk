running
setUpDecoded
	connectRequest := BtUDPConnectRequest new.
	connectRequest connectionID: firstConnectionID.
	connectRequest transaction: connectTransaction.
	announceRequest := BtUDPAnnounceRequest new.
	announceRequest connectionID: connectionID.
	announceRequest transaction: announceTransaction.
	scrapeRequest := BtUDPScrapeRequest new.
	scrapeRequest connectionID: connectionID.
	scrapeRequest transaction: scrapeTransaction.
	scrapeRequest infoHashCollection addAll: #(0 1 2 3)