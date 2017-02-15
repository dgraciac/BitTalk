operations
reset
	blocks := Array new: blocks size.
	requestedArray := Array new: requestedArray size.
	self resetRequestedArray .
	currentSize := 0.
	Smalltalk garbageCollect .