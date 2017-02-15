messages-send
sendHave: pieceIndex
	self enqueue: (BtMessage haveMessage: pieceIndex) .
	self log: 'HAVE: ' , pieceIndex asString , ' sent'