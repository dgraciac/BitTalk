operations
deleteBlock: offset
	self checkOffset: offset.
	(blocks at: (offset / blockSize) + 1)
		ifNotNil: [
			blocks at: (offset / blockSize) + 1 put: nil.
			currentSize := currentSize - (self blockSizeOf: offset) 
		].
	