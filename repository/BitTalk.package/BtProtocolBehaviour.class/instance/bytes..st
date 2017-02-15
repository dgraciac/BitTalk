accessing
bytes: aByteArray
	aByteArray class ~= ByteArray ifTrue:[self error:'Bad class'].
	aByteArray size ~= 8 ifTrue:[self error: 'Bad size'].
	bytes := aByteArray