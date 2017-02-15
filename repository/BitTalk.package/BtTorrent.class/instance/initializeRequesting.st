initialize-release
initializeRequesting
	requesting ifNotNil: [ requesting terminate ].
	requesting := BtExecutableBlock new
		block: [ 
			[ 
			self isComplete
				ifTrue: [ self discardSeeders ]
				ifFalse: [ self doRequesting ].
			Processor yield ] repeat ]