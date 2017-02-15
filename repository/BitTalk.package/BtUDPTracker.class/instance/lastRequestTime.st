accessing
lastRequestTime
	| times |
	times:={ self lastAnnounceRequestTime . lastScrapeRequestTime . lastConnectRequestTime }.
	times:=times reject: [ :v| v isNil ].
	times isEmpty 
		ifTrue: [ ^nil ]
		ifFalse:[^times detectMax: [ :v | v ]]