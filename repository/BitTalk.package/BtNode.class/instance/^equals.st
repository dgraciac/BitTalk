comparing
= anotherNode
	^ self == anotherNode
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherNode species
				ifTrue: [ domain = anotherNode domain and: [ port = anotherNode port ] ]
				ifFalse: [ false ] 
		]