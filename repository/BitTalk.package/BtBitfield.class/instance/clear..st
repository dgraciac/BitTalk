operations
clear: pieceIndex
	"Pongo el bit pieceIndex a 0. Devuelve true si el eatdo previo del bit era 1, false en caso contrario"

	^ [ 
	(self at: pieceIndex) = 1
		ifTrue: [ 
			self modify: pieceIndex value: 0.
			numBitsSet := numBitsSet - 1.
			true ]
		ifFalse: [ false ] ]
		on: BtBitfieldBadIndex
		do: [ :ex | ex return: false ]