operations
setNotCompleteMode
	mode ~= NotCompleteMode
		ifTrue: [ 
			self sortBlock: NotCompleteSortBlock.
			mode := NotCompleteMode ]