comparing
= anotherPieceCounter
	^ self == anotherPieceCounter
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPieceCounter species
				ifTrue: [ index = anotherPieceCounter index ]
				ifFalse: [ false ] ]