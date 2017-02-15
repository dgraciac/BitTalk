messages-send
sendChoke
	self enqueue: BtMessage chokeMessage.
	self log: 'CHOKE sent'.