private - operations
updateAnnounceRequest: transaction
	^announceRequest
		transaction: transaction;
		connectionID: self connectionID