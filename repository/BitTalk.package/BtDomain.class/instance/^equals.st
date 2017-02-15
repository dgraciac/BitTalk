comparing
= anotherDomain
	^ self == anotherDomain
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherDomain species
				ifTrue: [ address = anotherDomain address ]
				ifFalse: [ false ]
		]