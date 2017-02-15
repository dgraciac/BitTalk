accessing
discardAllRequests
	self flushAllSuchThat: [ :msg | msg type = BtMessage requestMessageType ]