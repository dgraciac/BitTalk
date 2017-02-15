operations
missingBlocks
	^self enumerateAllOffsets reject: [:offset | self isPresent: offset ]