private
properIndex: pieceIndex
	^pieceIndex + 1 > length
		ifTrue:[false]
		ifFalse:[true]	