messages-send
sendNotInterested
	self enqueue: BtMessage notInterestedMessage.
	self log: 'NOT INTERESTED sent'