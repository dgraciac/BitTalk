operations
setRequest: offset
	self checkOffset: offset.
	(requestedArray at: offset / blockSize + 1)
		ifTrue: [ ^ self ].
	numRequested := numRequested + 1.
	requestedArray at: offset / blockSize + 1 put: true