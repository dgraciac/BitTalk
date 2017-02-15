operations
start
	torrentLock
		critical: [ 
			isActive
				ifFalse: [ 
					self initializeProcessesNames.
					starting resume.
					isActive := true ] ]