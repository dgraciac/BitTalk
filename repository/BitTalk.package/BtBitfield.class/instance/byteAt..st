private
byteAt: pieceIndex
	| byteIndex |
	
	(self properIndex: pieceIndex) 
		ifFalse:[BtBitfieldBadIndex signal].
		
	byteIndex:= self class byteIndex: pieceIndex .
	^field at: byteIndex.