comparing
= anotherDomain
	^ self == anotherDomain
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherDomain species
				ifTrue: [ address = anotherDomain address and: [ name = anotherDomain name ] ]
				ifFalse: [ false ] 
		]