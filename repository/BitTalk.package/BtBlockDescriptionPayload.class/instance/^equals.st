comparing
= anotherPayload
	^ self == anotherPayload 
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPayload species
				ifTrue: [ index = anotherPayload index and:[begin = anotherPayload begin and:[length = anotherPayload length ] ]]
				ifFalse: [ false ] 
		]