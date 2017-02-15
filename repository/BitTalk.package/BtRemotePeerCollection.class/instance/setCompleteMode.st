operations
setCompleteMode
	mode ~= CompleteMode
		ifTrue: [ 
			self sortBlock: CompleteSortBlock.
			mode := CompleteMode ]