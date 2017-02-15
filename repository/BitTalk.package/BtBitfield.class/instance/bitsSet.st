operations
bitsSet
	^ (0 to: length - 1) select: [ :index | (self at: index) = 1 ]