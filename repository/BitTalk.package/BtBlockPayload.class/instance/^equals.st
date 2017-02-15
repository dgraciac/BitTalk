comparing
= anotherPayload
	^ self == anotherPayload 
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPayload species
				ifTrue: [ index = anotherPayload index and:[begin = anotherPayload begin and:[block = anotherPayload block ] ]]
				ifFalse: [ false ] 
		]