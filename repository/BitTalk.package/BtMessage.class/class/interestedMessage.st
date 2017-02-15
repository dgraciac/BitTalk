messages
interestedMessage
	| codedMessage |	
	codedMessage := self new.
	codedMessage type: InterestedMessageCode.
	^codedMessage