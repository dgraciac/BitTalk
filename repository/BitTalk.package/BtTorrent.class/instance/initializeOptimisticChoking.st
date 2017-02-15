initialize-release
initializeOptimisticChoking
	optimisticChoking ifNotNil: [ optimisticChoking terminate ].
	optimisticChoking := BtExecutableBlock new
		block: [ 
			[ 
			self updateLuckyPeer.
			(Delay forSeconds: 30) wait.
			Processor yield ] repeat ]