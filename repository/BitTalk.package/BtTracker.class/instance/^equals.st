comparing
= anotherTracker
	^ self == anotherTracker
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherTracker species
				ifTrue: [ domain = anotherTracker domain and: [ port = anotherTracker port and: [ path = anotherTracker path  ] ] ]
				ifFalse: [ false ] 
		]