accessing
lastSeenTime
	^ lastReceivedQueryTime
		ifNil: [ lastRespondedQueryTime ]
		ifNotNil: [ lastRespondedQueryTime ifNil: [ lastReceivedQueryTime ] ifNotNil: [ lastReceivedQueryTime max: lastRespondedQueryTime ] ]