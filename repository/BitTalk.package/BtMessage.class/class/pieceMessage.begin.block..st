messages
pieceMessage: index begin: begin block: block
	| codedMessage  |	
	codedMessage := self new.
	codedMessage
		type: PieceMessageCode;
		payload: (BtBlockPayload new index: index; begin: begin; block: block ).
	^codedMessage