running
setUp
	connectTransactionID := 123456789.
	announceTransactionID := 746384.
	scrapeTransactionID := 931761.
	errorTransactionID := 9426715.
	connectionID := 627894364.
	firstConnectionID := BtUDPPacket firstConnectionID.
	connectTransaction := BtUDPTransaction new.
	connectTransaction actionCode: 0.
	connectTransaction id: connectTransactionID.
	announceTransaction := BtUDPTransaction new.
	announceTransaction actionCode: 1.
	announceTransaction id: announceTransactionID.
	scrapeTransaction := BtUDPTransaction new.
	scrapeTransaction actionCode: 2.
	scrapeTransaction id: scrapeTransactionID.
	self setUpDecoded.
	self setUpEncoded