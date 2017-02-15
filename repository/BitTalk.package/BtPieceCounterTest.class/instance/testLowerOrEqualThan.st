tests-comparing
testLowerOrEqualThan
	| pc1 pc2 |
	pc1:= BtPieceCounter index: 0 count: 0.
	pc2:= BtPieceCounter index: 0 count: 0.	
	self assert: (pc1 lowerOrEqualThan: pc2).
	pc1:= BtPieceCounter index: 0 count: 0.
	pc2:= BtPieceCounter index: 1 count: 0.
	self assert: (pc1 lowerOrEqualThan: pc2). 
	pc1:= BtPieceCounter index: 1 count: 0.
	pc2:= BtPieceCounter index: 0 count: 0.
	self deny: (pc1 lowerOrEqualThan: pc2).