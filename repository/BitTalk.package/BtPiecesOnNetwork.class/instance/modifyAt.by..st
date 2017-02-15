operations
modifyAt: index by: amount
	"Positive amount to increment. Negative amount to decrement."

	| pieceCounter |
	pieceCounter := collection remove: (BtPieceCounter index: index count: 0) ifAbsent: [ nil ].
	pieceCounter
		ifNotNil: [ 
			pieceCounter modifyCountBy: amount.
			collection add: pieceCounter ]