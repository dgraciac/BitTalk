comparing
= anotherTorrent
	^ self == anotherTorrent
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherTorrent species
				ifTrue: [ self hash = anotherTorrent hash ]
				ifFalse: [ false ] ]