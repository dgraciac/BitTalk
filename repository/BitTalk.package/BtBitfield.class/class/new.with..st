instance creation
new: anInteger with: aByteArray
	"anInteger is the number of pieces of the torrent"
	| bitfield |
	anInteger <= ((aByteArray size) * 8)
		ifFalse:[self error:'Bad length'].
	bitfield:= self new.
	bitfield field: (aByteArray copyFrom: 1 to: (anInteger/8) ceiling ) .
	bitfield length: anInteger.
	^bitfield