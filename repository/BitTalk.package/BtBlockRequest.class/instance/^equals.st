comparing
= anotherBlockRequest
	^ self == anotherBlockRequest
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherBlockRequest species
				ifTrue: [ pieceIndex = anotherBlockRequest pieceIndex and:[offset = anotherBlockRequest offset and:[length = anotherBlockRequest length] ] ]
				ifFalse: [ false ]
		]