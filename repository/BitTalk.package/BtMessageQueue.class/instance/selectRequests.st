accessing
selectRequests
	^ monitor critical: [ (items select: [ :message | message type = 6 ]) asOrderedCollection ]