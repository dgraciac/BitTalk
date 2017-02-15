messages-send
sendBitfield:  aBitfield 
	self enqueue: (BtMessage bitfieldMessage: aBitfield ).
	self log: aBitfield asString , ' sent'