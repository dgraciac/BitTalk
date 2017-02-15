operations
terminate
	process
		ifNotNil: [ 
			process terminate.
			process := nil.
			Smalltalk garbageCollect ]