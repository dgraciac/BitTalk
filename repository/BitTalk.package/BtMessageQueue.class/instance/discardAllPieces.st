accessing
discardAllPieces
	self flushAllSuchThat: [ :msg | msg type = BtMessage pieceMessageType ]