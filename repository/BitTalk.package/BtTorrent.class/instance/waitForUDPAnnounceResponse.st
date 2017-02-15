peer discovery
waitForUDPAnnounceResponse
	| seconds count |
	seconds:=7.
	count:=0.
	[ count<seconds and:[ self currentTracker announceHasFailed ]]
		whileTrue: [ 
			(Delay forSeconds: 1) wait .
			count:=count+1 
		].