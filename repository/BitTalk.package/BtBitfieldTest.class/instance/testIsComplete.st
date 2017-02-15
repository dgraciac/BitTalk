tests-accessing
testIsComplete
	| bitfield |	
	bitfield:= BtBitfield new: 8.
	0 to: 7 do:[:x | bitfield set: x].
	self assert: bitfield isComplete .
	
	bitfield:= BtBitfield new: 7.
	0 to: 6 do:[:x | bitfield set: x].
	self assert: bitfield isComplete .
	
	bitfield:= BtBitfield new: 7.
	0 to: 5 do:[:x | bitfield set: x].
	self deny: bitfield isComplete .
	
	bitfield:= BtBitfield new: 9.
	0 to: 7 do:[:x | bitfield set: x].
	bitfield set: 8.
	self assert: bitfield isComplete .
	
	bitfield:= BtBitfield new: 9.
	0 to: 7 do:[:x | bitfield set: x].
	self deny: bitfield isComplete .