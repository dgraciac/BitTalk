messages-send
sendPort:  aPort
	self enqueue: (BtMessage portMessage: aPort ).
	self log: 'PORT: ' , aPort asString , ' sent'