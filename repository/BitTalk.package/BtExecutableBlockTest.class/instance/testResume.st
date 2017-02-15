tests-operations
testResume
	process resume .
	self assert: process isScheduled .