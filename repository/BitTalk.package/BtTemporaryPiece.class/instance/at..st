operations
at: offset
	self checkOffset: offset.
	^blocks at: (offset / blockSize) + 1 