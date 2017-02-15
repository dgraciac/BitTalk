operations
resetRequestedArray
	1 to: requestedArray size do:[:index| requestedArray at: index put: false].
	numRequested := 0.