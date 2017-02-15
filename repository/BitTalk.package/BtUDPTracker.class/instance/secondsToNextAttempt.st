private - operations
secondsToNextAttempt
	^ connectionStatusLock
		critical: [ 
			attempts < 0
				ifTrue: [ 0 ]
				ifFalse: [ 
					| lastRequestTime |
					(lastRequestTime := self lastRequestTime)
						ifNil: [ 0 ]
						ifNotNil: [ 
							| t1 t2 |
							t1 := 15 * (2 raisedTo: attempts).
							t2 := ((Time millisecondsSince: lastRequestTime) / 1000) ceiling.
							t1 - t2 ] ] ]