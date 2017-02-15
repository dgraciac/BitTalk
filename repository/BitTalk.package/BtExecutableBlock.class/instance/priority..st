accessing
priority: anInteger
	(anInteger between: Processor lowestPriority and: Processor highestPriority)
		ifTrue: [ 
			process ifNotNil: [ process priority: anInteger ].
			priority := anInteger ]
		ifFalse: [ self error: 'Invalid priority: ' , anInteger printString ]