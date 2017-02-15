messages-send
sendRequest: index begin: begin length: length
	| message  |
	message := BtMessage requestMessage: index begin: begin length: length.
	self enqueue: message.
	self log: 'REQUEST: ' , message payload asString , ' sent'