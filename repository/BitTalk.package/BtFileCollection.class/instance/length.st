operations
length
	^ self inject: 0 into: [ :sum :file | sum + file finalSize ]