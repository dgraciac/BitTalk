tests-private
testByteAt
	| bitfield |	
	bitfield:= BtBitfield new: 8*3.
	bitfield set: 0.
	self assert: (bitfield byteAt: 1) = 128.
	bitfield set: 8.
	self assert: (bitfield byteAt: 2) = 128.
	bitfield set: 16.
	self assert: (bitfield byteAt: 3) = 128.
	