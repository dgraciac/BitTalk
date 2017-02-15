tests-operations
testTerminate
	process resume .
	process terminate .
	self assert: process isTerminated .
	process initializeProcess .
	process terminate .
	self assert: process isTerminated .