private - operations
waitForNextAttempt
	[ Processor yield. self secondsToNextAttempt > 0] whileTrue