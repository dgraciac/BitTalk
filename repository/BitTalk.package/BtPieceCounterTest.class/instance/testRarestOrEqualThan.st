tests-comparing
testRarestOrEqualThan
	| pc1 pc2 |
	pc1:= BtPieceCounter index: 0 count: 0.
	pc2:= BtPieceCounter index: 1 count: 0.	
	self assert: (pc1 rarestOrEqualThan: pc2).
	pc1:= BtPieceCounter index: 0 count: 0.
	pc2:= BtPieceCounter index: 1 count: 1.
	self assert: (pc1 rarestOrEqualThan: pc2). 
	pc1:= BtPieceCounter index: 0 count: 1.
	pc2:= BtPieceCounter index: 1 count: 0.
	self deny: (pc1 rarestOrEqualThan: pc2).
		