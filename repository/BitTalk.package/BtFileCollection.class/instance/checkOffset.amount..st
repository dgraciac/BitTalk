private - operations
checkOffset: offset amount: amount
	(offset < 0 or: [ offset >= self length ])
		ifTrue: [ self error: 'offset out of bounds' ].
	offset + amount > self length
		ifTrue: [ self error: 'offset + amount out of bounds' ]