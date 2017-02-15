messages
haveMessage: index
	| codedMessage |	
	codedMessage := self new.
	codedMessage
		type: HaveMessageCode;
		payload: (BtHavePayload new index: index).
	^codedMessage