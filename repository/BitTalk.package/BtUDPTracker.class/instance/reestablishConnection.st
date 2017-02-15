private - operations
reestablishConnection
	connectionStatusLock
		critical: [ 
			transactionQueue nextPut: BtUDPTransaction newConnect.
			connectionID := BtUDPPacket firstConnectionID ]