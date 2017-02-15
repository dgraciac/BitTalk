tests-operations
testWriteOffsetData
	self setEmpty.
	self should: [ fileCollection writeOffset: -1 data: 3 ] raise: Error.
	self should: [ fileCollection writeOffset: 0 data: 9 ] raise: Error.
	fileCollection writeOffset: 0 data: '12345678' asByteArray.	
	self assert: (fileCollection readOffset: 0 amount: 8) = '12345678' asByteArray.
	self setEmpty.
	fileCollection writeOffset: 3 data: '45' asByteArray.	
	self assert: (fileCollection readOffset: 0 amount: 5) = #[0 0 0 52 53].
	self assert: (fileCollection readOffset: 0 amount: 6) isNil
