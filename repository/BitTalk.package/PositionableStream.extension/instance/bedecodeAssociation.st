*BitTalk
bedecodeAssociation
	self peek asCharacter isDigit
		ifFalse: [ self error: 'Key must be a bencoded string' ].
	^ self bedecodeString -> self bedecoded