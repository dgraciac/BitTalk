initialize-release
initializeSending
	sending ifNotNil: [ sending terminate ].
	sending := BtExecutableBlock new
		block: [ 
			[ true ]
				whileTrue: [
					self sendAllPendingRPCs . 
					(Delay forSeconds: 1) wait.
					Processor yield ] ]