initialize-release
initializeListening
	listening ifNotNil: [ listening terminate ].
	listening := BtExecutableBlock new
		block: [
			[ true ]
				whileTrue: [ 
					self receiveConnection.
					Processor yield ] ]