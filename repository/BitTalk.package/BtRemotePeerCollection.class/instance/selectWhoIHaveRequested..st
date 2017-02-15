enumerating
selectWhoIHaveRequested: blockRequest
	^ self select: [ :peer | peer haveIRequested: blockRequest ]