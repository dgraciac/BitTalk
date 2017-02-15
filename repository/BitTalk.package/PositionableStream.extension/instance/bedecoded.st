*BitTalk
bedecoded
	| elem |
	elem := self peek asCharacter.
	^ elem = $i
		ifTrue: [ self bedecodeInteger ]
		ifFalse: [ 
			elem isDigit
				ifTrue: [ self bedecodeString ]
				ifFalse: [ 
					elem = $l
						ifTrue: [ self bedecodeList ]
						ifFalse: [ 
							elem = $d
								ifTrue: [ self bedecodeDictionary ]
								ifFalse: [ self error: 'Unknown bencoded form' ] ] ] ]