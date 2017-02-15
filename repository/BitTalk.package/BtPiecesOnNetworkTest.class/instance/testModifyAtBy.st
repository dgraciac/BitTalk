tests-operations
testModifyAtBy
	| piecesOnNetwork |
	piecesOnNetwork := BtPiecesOnNetwork new: 3.
	piecesOnNetwork setRarityMode .
	piecesOnNetwork modifyAt: 2 by: 5.
	piecesOnNetwork modifyAt: 0 by: 3.
	piecesOnNetwork modifyAt: 1 by: 2. 
	self assert: piecesOnNetwork selectExistingPieces size = 3 .
	self assert: piecesOnNetwork selectAll = (OrderedCollection withAll: #(1 0 2)).
	piecesOnNetwork modifyAt: 2 by: -4.
	self assert: piecesOnNetwork selectAll = (OrderedCollection withAll: #(2 1 0)). 
	piecesOnNetwork setIndexMode .
	self assert: piecesOnNetwork selectAll = (OrderedCollection withAll: #(0 1 2)).
	piecesOnNetwork setRarityMode .
	self assert: piecesOnNetwork selectAll = (OrderedCollection withAll: #(2 1 0)). 