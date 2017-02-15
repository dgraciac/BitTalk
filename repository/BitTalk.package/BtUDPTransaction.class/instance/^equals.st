comparing
= anotherTransaction
	^ self == anotherTransaction
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherTransaction species
				ifTrue: [ actionCode = anotherTransaction actionCode and: [ id = anotherTransaction id ] ]
				ifFalse: [ false ] 
		]