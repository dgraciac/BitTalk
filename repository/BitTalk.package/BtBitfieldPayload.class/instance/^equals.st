comparing
= anotherPayload
	^ self == anotherPayload 
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPayload species
				ifTrue: [ bitfield = anotherPayload bitfield ]
				ifFalse: [ false ] 
		]