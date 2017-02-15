tests-accessing
testNumBitsSet
	| bitfield |	
	bitfield:= BtBitfield new: 8.
	self assert: bitfield numBitsSet = 0.
	bitfield set: 0.
	self assert: bitfield numBitsSet = 1.
	bitfield set: 0.
	self assert: bitfield numBitsSet = 1.
	bitfield clear: 0.
	self assert: bitfield numBitsSet = 0.
	bitfield clear: 0.
	self assert: bitfield numBitsSet = 0.