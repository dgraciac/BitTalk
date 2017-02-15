operations
bitsClear
	^ (0 to: length - 1) select: [ :index | (self at: index) = 0 ]