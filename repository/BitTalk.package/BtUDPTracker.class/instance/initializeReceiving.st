initialize-release
initializeReceiving
	receiving ifNotNil: [ receiving terminate ].
	receiving := BtExecutableBlock new
		block: [ 
			[ 
			self receiveAndHandleNextPacket.
			Processor yield ] repeat ]