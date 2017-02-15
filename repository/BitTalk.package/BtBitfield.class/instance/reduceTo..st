operations
reduceTo: newLength
	length > newLength
		ifTrue: [ 
			(newLength to: length - 1) do: [ :index | numBitsSet := numBitsSet - (self at: index) ].
			length := newLength ]
		ifFalse: [ 
			newLength > length
				ifTrue: [ self error: 'newLength >  length' ] ]