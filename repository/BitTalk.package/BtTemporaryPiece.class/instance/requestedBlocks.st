operations
requestedBlocks
	^self enumerateAllOffsets select:[:offset| self requestedAt: offset]