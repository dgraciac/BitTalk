tests-operations
testFirstFileIndex
	self setCase1.
	self assert: (fileCollection firstFileIndex: 0) = 1.
	self assert: (fileCollection firstFileIndex: 1) = 1.
	self assert: (fileCollection firstFileIndex: 3) = 1.
	self assert: (fileCollection firstFileIndex: 4) = 2.
	self assert: (fileCollection firstFileIndex: 5) = 2.
	self assert: (fileCollection firstFileIndex: 7) = 2