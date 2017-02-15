initialize-release
initializeTrackerRequesting
	trackerRequesting ifNotNil: [ trackerRequesting terminate ].
	trackerRequesting := BtExecutableBlock new
		block: [ 
			[ 
			self shouldAnnounce
				ifTrue: [ self doAnnounce ].
			(Delay forSeconds: 1) wait.
			Processor yield ] repeat ]