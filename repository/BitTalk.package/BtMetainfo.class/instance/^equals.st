comparing
= anotherMetainfo
	^ self == anotherMetainfo
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherMetainfo species
				ifTrue: [ self hash = anotherMetainfo hash ]
				ifFalse: [ false ] ]