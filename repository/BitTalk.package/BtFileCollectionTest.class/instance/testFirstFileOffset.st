tests-operations
testFirstFileOffset
	self setCase1.
	self assert: (fileCollection firstFileOffset: 0) = 0.
	self assert: (fileCollection firstFileOffset: 1) = 1.
	self assert: (fileCollection firstFileOffset: 3) = 3.
	self assert: (fileCollection firstFileOffset: 4) = 0.
	self assert: (fileCollection firstFileOffset: 5) = 1.
	self assert: (fileCollection firstFileOffset: 7) = 3