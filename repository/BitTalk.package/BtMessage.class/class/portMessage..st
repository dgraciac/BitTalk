messages
portMessage: port
	| codedMessage  |	
	codedMessage := self new.
	codedMessage
		type: PortMessageCode;
		payload: (BtPortPayload new port: port).
	^codedMessage