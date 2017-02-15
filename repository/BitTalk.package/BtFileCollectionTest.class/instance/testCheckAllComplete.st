tests-operations
testCheckAllComplete
	self setCase1.
	self shouldnt: [ fileCollection checkAllComplete ] raise: Error.
	self setCase2.
	self should: [ fileCollection checkAllComplete ] raise: Error.
	self setCase3.
	self should: [ fileCollection checkAllComplete ] raise: Error