tests-operations
testReadOffsetAmount
	self setCase1.
	self should: [ fileCollection readOffset: -1 amount: 3 ] raise: Error.
	self should: [ fileCollection readOffset: 0 amount: 9 ] raise: Error.
	self assert: (fileCollection readOffset: 0 amount: 8) = '12345678' asByteArray.
	self assert: (fileCollection readOffset: 1 amount: 7) = '2345678' asByteArray.
	self assert: (fileCollection readOffset: 0 amount: 4) = '1234' asByteArray.
	self assert: (fileCollection readOffset: 4 amount: 4) = '5678' asByteArray.
	self setCase2.
	self assert: (fileCollection readOffset: 0 amount: 6) = '123456' asByteArray.
	self assert: (fileCollection readOffset: 0 amount: 7) isNil.
	self assert: (fileCollection readOffset: 4 amount: 2) = '56' asByteArray.
	self setCase3.
	self assert: (fileCollection readOffset: 0 amount: 2) = '12' asByteArray.
	self assert: (fileCollection readOffset: 4 amount: 2) = '56' asByteArray.
	self assert: (fileCollection readOffset: 4 amount: 3) isNil