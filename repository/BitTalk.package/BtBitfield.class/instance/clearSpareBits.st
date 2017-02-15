operations
clearSpareBits
	self spareBitsDo: [ :index | 
		|  byteIndex bitIndex |
		byteIndex:= self class byteIndex: index .					
		bitIndex:= self class bitIndex: index .
		(field at: byteIndex) bitAt: 9 - bitIndex put: 0.
	].