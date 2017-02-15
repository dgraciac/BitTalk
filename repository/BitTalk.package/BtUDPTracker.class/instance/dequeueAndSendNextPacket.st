private - operations
dequeueAndSendNextPacket
	| packet |
	self isConnectionAlive
		ifFalse: [ self reestablishConnection ].
	packet := self dequeueNextRequest.
	packet ifNotNil: [ self sendPacket: packet ]