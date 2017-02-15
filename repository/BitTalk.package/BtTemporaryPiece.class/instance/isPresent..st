operations
isPresent: offset 
	^(self at: offset)
		ifNil: [ false ]
		ifNotNil: [ true ]