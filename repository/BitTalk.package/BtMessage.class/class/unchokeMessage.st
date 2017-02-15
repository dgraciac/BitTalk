messages
unchokeMessage
	| codedMessage |	
	codedMessage := self new.
	codedMessage type: UnchokeMessageCode.
	^codedMessage