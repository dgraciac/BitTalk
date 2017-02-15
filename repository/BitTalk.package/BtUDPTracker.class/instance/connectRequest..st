private - operations
connectRequest: transaction
	^ BtUDPConnectRequest new
		transaction: transaction;
		connectionID: self connectionID