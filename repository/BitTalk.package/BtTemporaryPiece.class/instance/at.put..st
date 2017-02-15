operations
at: offset put: aByteArray
	self checkBlock: aByteArray offset: offset.
	(blocks at: (offset / blockSize) + 1)
		ifNil: [currentSize := currentSize + (aByteArray size) ].
	blocks at: (offset / blockSize) + 1 put: aByteArray.