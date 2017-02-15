operations
restartMeasuringRates
	peerLock
		critical: [ 
			startMeasuringTime := Time millisecondClockValue.
			lastUploaded amount: uploaded amount.
			lastDownloaded amount: downloaded amount]