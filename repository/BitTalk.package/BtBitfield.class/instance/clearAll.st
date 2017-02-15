operations
clearAll
"Pongo todos los bits a 0"
	field := ByteArray new: (length / 8) ceiling .
	numBitsSet:= 0.