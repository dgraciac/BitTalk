operations
checkOffset: offset
	((offset rem: blockSize) ~= 0 or:[offset > self lastBlockOffset ])
		ifTrue:[self error:'Bad block offset'].