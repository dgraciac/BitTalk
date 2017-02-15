tests-operations
testCheckOffset
	| tempPiece |
	tempPiece:= BtTemporaryPiece length: 25 blockSize: 4.
	self shouldnt: [ tempPiece checkOffset: 0 ] raise: Error . 
	self should: [ tempPiece checkOffset: 1 ] raise: Error .
	self should: [ tempPiece checkOffset: 3 ] raise: Error .
	self shouldnt: [  tempPiece checkOffset: 4 ] raise: Error .
	self should: [ tempPiece checkOffset: 5 ] raise: Error .
	self shouldnt: [  tempPiece checkOffset: 24 ] raise: Error .
	self should: [ tempPiece checkOffset: 25 ] raise: Error .
	self should: [ tempPiece checkOffset: 28 ] raise: Error .