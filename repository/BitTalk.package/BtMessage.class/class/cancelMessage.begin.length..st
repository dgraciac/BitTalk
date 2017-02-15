messages
cancelMessage: index begin: begin length: length
	| codedMessage |	
	codedMessage := self new.
	codedMessage
		type: CancelMessageCode;
		payload: (BtBlockDescriptionPayload new index: index; begin: begin; length: length ).
	^codedMessage