messages-send
sendInterested
	self enqueue: BtMessage interestedMessage.
	self log: 'INTERESTED sent'