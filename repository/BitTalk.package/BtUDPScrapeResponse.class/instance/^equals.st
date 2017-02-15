comparing
= anotherPacket
	^ super = anotherPacket
		ifTrue: [ true ]
		ifFalse: [ scrapeTorrentStatCollection = anotherPacket scrapeTorrentStatCollection ]