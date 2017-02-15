initialize-release
initialize
	super initialize.
	socket := Socket newUDP.
	connectionID := nil.
	announceRequest := BtUDPAnnounceRequest new.
	scrapeRequest := BtUDPScrapeRequest new.
	transactionQueue := BtUDPTransactionQueue new.
	announceResponse := BtUDPAnnounceResponse new.
	scrapeResponse := BtUDPScrapeResponse new.
	errorResponse := BtUDPErrorResponse new.
	establishmentTime := nil.
	lastConnectRequestTime := nil.
	lastScrapeRequestTime := nil.
	lastAnnounceRequestTime := nil.
	lastScrapeResponseTime := nil.
	lastErrorResponseTime := nil.
	isLastAnnounceAnswered := false.
	attempts := -1.
	self initializeProcesses.
	connectionStatusLock := Monitor new.