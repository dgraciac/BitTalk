operations
requestedAt: offset
	self checkOffset: offset.
	^requestedArray at: (offset / blockSize) + 1