comparing
= anotherPeer
	^ self == anotherPeer
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherPeer species
				ifTrue: [ domain = anotherPeer domain and: [ port = anotherPeer port and: [ id = anotherPeer id ] ] ]
				ifFalse: [ false ] 
		]