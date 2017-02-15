queues
dequeueAndSendNextMessage
	| nextMessageToSend |
	self ensureKeepAlive.
	nextMessageToSend := outMessageQueue nextOrNil.
	nextMessageToSend
		ifNotNil: [ 
			socketStream nextPutAllFlush: nextMessageToSend asByteArray.
			peerLock critical: [ lastMessageSentTime := Time millisecondClockValue ] ]