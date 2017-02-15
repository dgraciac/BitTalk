comparing
= anotherPayload
	^ self == anotherPayload 
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPayload species
				ifTrue: [ port = anotherPayload port ]
				ifFalse: [ false ] 
		]