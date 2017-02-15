piece control
isInEndGame
	^ torrentLock
		critical: [ 
			self isComplete not
				and: [ bitfield bitsClear allSatisfy: [ :index | (temporaryPieces at: index + 1) allMissingBlocksAreRequested ] ] ]