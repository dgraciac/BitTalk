comparing
= anotherPayload
	^ self == anotherPayload
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPayload species
				ifTrue: [ index = anotherPayload index ]
				ifFalse: [ false ] ]