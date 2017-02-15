tests-accessing
testClear
	| bitfield |	
	bitfield:= BtBitfield new: 8.
	bitfield clear: 0.
	self assert: (bitfield at: 0) = 0.
	bitfield clear: 0.
	self assert: (bitfield at: 0) = 0.
	bitfield set: 0.
	bitfield clear: 0. 
	self assert: (bitfield at: 0) = 0.
	