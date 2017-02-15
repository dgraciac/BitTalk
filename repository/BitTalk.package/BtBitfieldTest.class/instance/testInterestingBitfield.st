tests-accessing
testInterestingBitfield
	| b a c d interestingBitfield |
	self should: [ (BtBitfield new: 7) interestingBitfield: (BtBitfield new: 8) ] raise: Error.
	a := BtBitfield new: 8.
	b := BtBitfield new: 8.
	interestingBitfield := a interestingBitfield: b.
	self assert: (interestingBitfield = a and: [ interestingBitfield numBitsSet = 0 ]).
	c := BtBitfield new: 8.
	c set: 0.
	interestingBitfield := a interestingBitfield: c.
	self assert: (interestingBitfield = c and: [ interestingBitfield numBitsSet = 1 ]).
	d := BtBitfield new: 8.
	d set: 0.
	interestingBitfield := c interestingBitfield: a. 
	self assert: (interestingBitfield = a and:[interestingBitfield numBitsSet = 0] ).
	interestingBitfield := c interestingBitfield: d.
	self assert: (interestingBitfield = a and: [ interestingBitfield numBitsSet = 0 ])