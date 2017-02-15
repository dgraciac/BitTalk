accessing
announceRequest: newAnnounceRequest
	| oldTrackerID |
	oldTrackerID:=announceRequest trackerID.
	announceRequest := newAnnounceRequest . 
	oldTrackerID ifNotNil: [ announceRequest trackerID: oldTrackerID ] 