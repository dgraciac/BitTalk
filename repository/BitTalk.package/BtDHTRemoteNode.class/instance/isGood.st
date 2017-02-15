testing
isGood
	"BEP5: A good node is a node has responded to one of our queries within the last 15 minutes. A node is also good if it has ever responded to one of our queries and has sent us a query within the last 15 minutes. After 15 minutes of inactivity, a node becomes questionable."

	^ lastRespondedQueryTime
		ifNotNil: [ 
			(Time millisecondsSince: lastRespondedQueryTime) <= BtDHTLocalNode maxInactivityPeriod
				or: [ 
					lastReceivedQueryTime
						ifNotNil: [ (Time millisecondsSince: lastReceivedQueryTime) <= BtDHTLocalNode maxInactivityPeriod ]
						ifNil: [ false ] ] ]
		ifNil: [ false ]