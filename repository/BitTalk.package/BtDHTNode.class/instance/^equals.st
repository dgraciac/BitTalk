comparing
= anotherNode
	^ self == anotherNode
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherNode species
				ifTrue: [ id = anotherNode id ]
				ifFalse: [ false ] 
		]