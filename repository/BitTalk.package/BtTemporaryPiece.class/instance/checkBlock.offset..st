operations
checkBlock: aByteArray offset: offset
	| expectedSize |
	self checkOffset: offset.
	expectedSize:= 
		offset = self lastBlockOffset 
			ifTrue:[lastBlockSize] 
			ifFalse:[blockSize].
	
	aByteArray size ~= expectedSize
		ifTrue:[self error: 'Bad block size']
