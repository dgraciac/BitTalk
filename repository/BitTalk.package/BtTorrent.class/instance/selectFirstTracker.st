peer discovery
selectFirstTracker
	self isInMultitrackerMode
		ifFalse: [ ^ self ].
	multitracker selectFirst.
	self log: 'mulitracker mode: first tracker selected'