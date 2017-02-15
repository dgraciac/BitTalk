peer discovery
lastAnnounceEventIsCompleted
	|event|
	event:=self currentTracker announceRequest event.
	^self currentTracker isHTTP
		ifTrue:[ event = BtHTTPAnnounceQuery completedEvent ]
		ifFalse:[ event = BtUDPAnnounceRequest completedEvent ].