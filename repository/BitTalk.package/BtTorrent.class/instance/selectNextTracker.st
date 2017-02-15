peer discovery
selectNextTracker
	self isInMultitrackerMode
		ifFalse: [ ^ self ].
	multitracker selectNext.
	self log: 'mulitracker mode: next tracker selected'