comparing
= anotherPacket
	^ self == anotherPacket
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPacket species
				ifTrue: [ transaction = anotherPacket transaction ]
				ifFalse: [ false ] 
		]