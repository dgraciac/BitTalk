messages-send
sendKeepAlive
	self enqueue: BtMessage keepAliveMessage .
	self log: 'KEEP-ALIVE sent'