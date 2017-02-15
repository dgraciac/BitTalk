copying
postCopy
	super postCopy .
	length := length copy.
	numBitsSet := numBitsSet copy.
	field := field copy.