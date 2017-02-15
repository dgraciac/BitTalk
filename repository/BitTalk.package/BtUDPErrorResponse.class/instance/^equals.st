comparing
= anotherPacket
	^ super = anotherPacket
		ifTrue: [ true ]
		ifFalse: [ message = anotherPacket message ]