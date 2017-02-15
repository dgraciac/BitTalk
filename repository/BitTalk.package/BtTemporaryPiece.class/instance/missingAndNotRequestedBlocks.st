operations
missingAndNotRequestedBlocks
	^self missingBlocks reject: [ :offset| self requestedAt: offset]