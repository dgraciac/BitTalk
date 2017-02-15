initialize-release
initializeStarting
	starting ifNotNil: [ starting terminate ].
	starting := BtExecutableBlock new
		block: [ 
			self log: 'resuming'.
			self initializeState .
			self log: 'checking...'.
			checkingFinished := Semaphore new.
			initialChecking resume.
			checkingFinished wait.
			measuringRates resume. 
			choking resume.
			optimisticChoking resume.
			receiving resume.
			requesting resume.			
			trackerRequesting resume.
		].