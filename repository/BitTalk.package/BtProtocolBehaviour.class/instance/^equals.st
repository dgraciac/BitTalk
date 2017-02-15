comparing
= anotherProtocolBehaviour
	^ self == anotherProtocolBehaviour
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherProtocolBehaviour species
				ifTrue: [ bytes = anotherProtocolBehaviour bytes ]
				ifFalse: [ false ]
		]