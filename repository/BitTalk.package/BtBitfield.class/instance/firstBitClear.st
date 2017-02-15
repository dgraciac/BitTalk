operations
firstBitClear
	^(0 to: length - 1) detect:[:bit | (self at: bit) = 0 ] ifNone:[nil]