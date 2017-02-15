comparing
= anotherMessage
	^ self == anotherMessage
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherMessage species
				ifTrue: [ type = (anotherMessage type) and:[payload = anotherMessage payload] ]
				ifFalse: [ false ] 
		]