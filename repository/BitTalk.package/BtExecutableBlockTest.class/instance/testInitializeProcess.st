tests-initialize-release
testInitializeProcess
	process initializeProcess .
	self assert: process isSuspended .
	process initializeProcess .
	self assert: process isSuspended .
	process resume .
	process initializeProcess .
	self assert: process isSuspended .