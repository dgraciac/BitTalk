queues
receiveAndEnqueueNextMessage
	| messageReceived |
	messageReceived := [ self receiveNextMessage ]
		on: ConnectionTimedOut , BtMessageError
		do: [ :ex | ex return: nil ].
	messageReceived ifNotNil: [ inMessageQueue nextPut: messageReceived ]