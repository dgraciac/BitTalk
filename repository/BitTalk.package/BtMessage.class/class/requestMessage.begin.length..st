messages
requestMessage: index begin: begin length: length
	| codedMessage |	
	codedMessage := self new.
	codedMessage
		type: RequestMessageCode;
		payload: (BtBlockDescriptionPayload new index: index; begin: begin; length: length ).
	^codedMessage