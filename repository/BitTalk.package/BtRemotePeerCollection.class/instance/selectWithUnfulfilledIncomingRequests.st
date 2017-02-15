enumerating
selectWithUnfulfilledIncomingRequests
	^ self select: [ :peer | peer unfulfilledIncomingRequests isNotEmpty ]