tests-operations
testCheckOffsetAmount
	self setCase1.
	self shouldnt: [ fileCollection checkOffset: 0 amount: 8 ] raise: Error.
	self should: [ fileCollection checkOffset: -1 amount: 8 ] raise: Error.
	self should: [ fileCollection checkOffset: 0 amount: 9 ] raise: Error.
	self should: [ fileCollection checkOffset: 1 amount: 8 ] raise: Error