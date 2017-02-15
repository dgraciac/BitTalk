initialize-release
initializeSending
	sending ifNotNil: [ sending terminate ].
	sending := BtExecutableBlock new
		block: [ 
			[ 
			self secondsToNextAttempt <= 0
				ifTrue: [ 
					self dequeueAndSendNextPacket.
					Processor yield ]
				ifFalse: [ self waitForNextAttempt ] ] repeat ]