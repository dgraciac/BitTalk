operations
interestingBitfield: anotherBitfield
	"Return a new bitfield whose bits are set if and only if self have these bit clear and anotherBitfield have it set"

	| anotherField newField newBitfield interestingHave |
	length ~= anotherBitfield length
		ifTrue: [ BtBitfieldBadLength signal ].
	anotherBitfield clearSpareBits.
	anotherField := anotherBitfield field.
	newField := ByteArray new: field size.
	interestingHave := 0.
	1 to: field size do: [ :index | 
		| anotherByte byte newByte |
		byte := field at: index.
		anotherByte := anotherField at: index.
		newByte := (byte bitXor: anotherByte) bitAnd: anotherByte.
		newField at: index put: newByte.
		(1 to: 8) do: [ :bitPos | interestingHave := interestingHave + (newByte bitAt: bitPos) ] ].
	newBitfield := self class new: length with: newField.
	newBitfield numBitsSet: interestingHave.
	^ newBitfield