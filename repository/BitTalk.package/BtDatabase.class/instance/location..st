accessing
location: newLocation	
	location isNil
		ifTrue:[ newLocation ensureCreateDirectory ]
		ifFalse: [ 
			location ~= newLocation 
				ifTrue:[location moveTo: newLocation].
		].	
	location := newLocation
	 