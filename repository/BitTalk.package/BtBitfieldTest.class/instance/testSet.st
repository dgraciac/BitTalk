tests-accessing
testSet
	| bitfield |	
	bitfield:= BtBitfield new: 8.
	bitfield set: 0.
	self assert: (bitfield at: 0) = 1.
	bitfield set: 0.
	self assert: (bitfield at: 0) = 1.
	bitfield clear: 0.
	bitfield set: 0. 
	self assert: (bitfield at: 0) = 1.