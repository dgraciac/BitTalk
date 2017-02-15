operations
check
	numBitsSet:=0.
	0 to: length - 1 do:[ :index | numBitsSet:= numBitsSet + (self at: index)]