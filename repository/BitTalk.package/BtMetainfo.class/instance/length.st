accessing
length
	^ self isSingleFileMode
		ifTrue: [ self infoDictionary at: 'length' ]
		ifFalse: [ self files inject: 0 into: [ :x :y | x + (y at: 'length') ] ]