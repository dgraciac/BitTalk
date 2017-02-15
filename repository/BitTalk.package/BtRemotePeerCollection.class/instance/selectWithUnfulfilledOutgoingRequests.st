enumerating
selectWithUnfulfilledOutgoingRequests
	^ self select: [ :peer | peer unfulfilledOutgoingRequests isNotEmpty ]