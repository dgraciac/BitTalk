initialize-release
initializeReceiving
	receiving ifNotNil: [ receiving terminate ].
	receiving := BtExecutableBlock new
		block: [ 
			[ true ]
				whileTrue: [
					self receiveAndHandleNextRPC. 
					(Delay forSeconds: 1) wait.
					Processor yield ] ]