testing
isConnectionAlive
	^connectionStatusLock
		critical: [ 
			establishmentTime
				ifNil: [ false ]
				ifNotNil: [ (Time millisecondsSince: establishmentTime) <= (MaximumSecondsAlive * 1000) ] 
		]