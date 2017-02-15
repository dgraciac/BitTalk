operations
clearRequest: offset
	self checkOffset: offset.
	(requestedArray at: offset / blockSize + 1)
		ifFalse: [ ^ self ].
	numRequested := numRequested - 1.
	requestedArray at: offset / blockSize + 1 put: false