operations
set: pieceIndex
	"Pongo el bit pieceIndex a 1. Devuelve true si el estado previo del bit era 0, falso en caso contrario"

	^ [ 
	(self at: pieceIndex) = 0
		ifTrue: [ 
			self modify: pieceIndex value: 1.
			numBitsSet := numBitsSet + 1.
			true ]
		ifFalse: [ false ] ]
		on: BtBitfieldBadIndex
		do: [ :ex | ex return: false ]