initialize-release
initializeReceiving
	receiving ifNotNil: [ receiving terminate ].
	receiving := BtExecutableBlock new
		block: [ 
			[ 
			self receiveAndEnqueueNextMessage.
			Processor yield ] repeat ]