comparing
= anotherPacket
	^ super = anotherPacket
		ifTrue: [ true ]
		ifFalse: [ connectionID = anotherPacket connectionID ]