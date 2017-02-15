initialize-release
initializeStopping
	stopping ifNotNil: [ stopping terminate ].
	stopping := BtExecutableBlock new
		block: [ 
			| lastAnnounceRequestTime |
			self log: 'Stopping'.
			self terminateProcesses.
			self selectFirstTracker.
			self currentTracker isUDP
				ifTrue: [ lastAnnounceRequestTime := self currentTracker lastAnnounceRequestTime ].
			stopPending := true.
			self updateAnnounceRequest.
			stopPending := false.
			self log: 'Sending stopped event'.
			self currentTracker announce.
			self currentTracker isUDP
				ifTrue: [ 
					| time |
					time := Time millisecondClockValue.
					[ 
					self currentTracker lastAnnounceRequestTime = lastAnnounceRequestTime
						and: [ (Time millisecondsSince: time) < (DefaultMaxSecondsForStopping * 1000) ] ]
						whileTrue: [ (Delay forMilliseconds: 100) wait ] ].
			self log: 'Stopping UDP tracker connections'.
			self stopUDPTrackerConnections.
			self log: 'Stopped' ].
	stopping priority: Processor userBackgroundPriority + 1