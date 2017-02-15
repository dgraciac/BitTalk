accessing
isPrivate
	^ (self infoDictionary at: 'private' ifAbsent: [ 0 ]) = 1