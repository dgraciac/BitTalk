enumerating
rejectAccepted
	^ self reject: [ :peer | peer isAccepted ]