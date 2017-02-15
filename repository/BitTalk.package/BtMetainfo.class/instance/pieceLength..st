accessing
pieceLength: anInteger
	| infoDictionary |
	infoDictionary:= self infoDictionary .
	infoDictionary isNil
		ifTrue:[
			self at:'info' put: Dictionary new.
			(self at:'info') at:'piece length' put: anInteger. 
		]
		ifFalse:[infoDictionary at: 'piece length' put: anInteger]