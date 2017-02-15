initialize-release
initializeManaging
	managing ifNotNil: [ managing terminate ].
	managing := BtExecutableBlock new
		block: [ 
			[ true ]
				whileTrue: [ 
					self updateConnectionsPerTorrent.
					(Delay forSeconds: 1) wait.
					Processor yield ] ]