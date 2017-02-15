comparing
= anotherPacket
	^ super = anotherPacket
		ifTrue: [ true ]
		ifFalse: [ 
			interval = anotherPacket interval
				and: [ 
					leechers = anotherPacket leechers
						and: [ seeders = anotherPacket seeders and: [ nodeCollection = anotherPacket nodeCollection ] ] ] ]