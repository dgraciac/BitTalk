messages
notInterestedMessage
	| codedMessage |	
	codedMessage := self new.
	codedMessage type: NotInterestedMessageCode.
	^codedMessage