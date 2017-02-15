initialize-release
initialize
	super initialize.
	numBitsSet:= 0.
	field := ByteArray new.
	length := 0.