private
modify: pieceIndex value: bit
	| byteIndex  bitIndex byte newByte |
	
	byte:= self byteAt: pieceIndex .
	bitIndex := self class bitIndex: pieceIndex .
	newByte:= byte bitAt: 9 - bitIndex put: bit.
	byteIndex := self class byteIndex: pieceIndex. 
	field at: byteIndex put: newByte.