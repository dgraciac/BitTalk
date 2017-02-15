initialize-release
initializeSending
	sending ifNotNil: [ sending terminate ].
	sending := BtExecutableBlock new
		block: [ 
			[ 
			self dequeueAndSendNextMessage.
			Processor yield ] repeat ]