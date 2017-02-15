testing
isScheduled
	^ process isSuspended not and:[process isTerminated not]