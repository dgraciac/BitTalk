operations
start
	localPeerLock
		critical: [ 
			isRunning := true.
			receiverSocket isUnconnectedOrInvalid
				ifTrue: [ self initializeReceiverSocket  ].
			listening resume ]