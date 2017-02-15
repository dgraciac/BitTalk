initialize-release
initialize
	super initialize.
	blocks := Array new.
	requestedArray := Array new.
	self resetRequestedArray .
	blockSize := 0.
	lastBlockSize := 0.
	currentSize := 0.