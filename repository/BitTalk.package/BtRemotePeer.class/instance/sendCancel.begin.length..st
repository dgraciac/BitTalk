messages-send
sendCancel: index begin: begin length: length
	| payload message |
	message := BtMessage cancelMessage: index begin: begin length: length.
	self enqueue: message.
	payload := message payload.
	self log: 'CANCEL: ' , payload asString , ' sent'.