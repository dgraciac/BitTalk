peer discovery
selectLastTracker
	self isInMultitrackerMode
		ifFalse: [ ^ self ].
	multitracker selectLast.
	self log: 'mulitracker mode: last tracker selected'