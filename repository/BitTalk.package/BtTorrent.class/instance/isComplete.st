testing
isComplete
	^torrentLock critical: [ bitfield isComplete ] 