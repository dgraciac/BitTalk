operations
allMissingBlocksAreRequested
	^ self missingBlocks allSatisfy: [ :offset | self requestedAt: offset]