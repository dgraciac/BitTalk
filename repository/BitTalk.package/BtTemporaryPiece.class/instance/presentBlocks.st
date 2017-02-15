operations
presentBlocks
	^self enumerateAllOffsets select: [:offset | self isPresent: offset ]