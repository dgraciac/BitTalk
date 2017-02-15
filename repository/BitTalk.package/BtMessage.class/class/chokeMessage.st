messages
chokeMessage
	| codedMessage |	
	codedMessage := self new.
	codedMessage type: ChokeMessageCode.
	^codedMessage