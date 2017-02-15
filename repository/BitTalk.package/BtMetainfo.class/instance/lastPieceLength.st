accessing
lastPieceLength
	| pieceLength remainder |
	pieceLength := self pieceLength.
	remainder := self length % pieceLength.
	^ remainder = 0
		ifTrue: [ pieceLength ]
		ifFalse: [ remainder ]