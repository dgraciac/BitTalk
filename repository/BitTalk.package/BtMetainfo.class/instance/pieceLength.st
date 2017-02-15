accessing
pieceLength
	| infoDictionary |
	infoDictionary:=self infoDictionary. 
	infoDictionary isNil
		ifTrue:[self error: 'There is not a info dictionary'].
		
	^self infoDictionary at: 'piece length' ifAbsent:[nil]