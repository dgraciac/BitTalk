handle received actions
handleReceivedConnect: packet
	connectionStatusLock
		critical: [ 
			establishmentTime := Time millisecondClockValue.
			connectionID := packet connectionID ]