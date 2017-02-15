operations
blockSizeOf: offset
	self checkOffset: offset.
	^self lastBlockOffset = offset
		ifTrue:[lastBlockSize]
		ifFalse:[blockSize]
	