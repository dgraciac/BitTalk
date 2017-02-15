peer discovery
moveCurrentTrackerToFirstInTier
	self isInMultitrackerMode
		ifFalse: [ ^ self ].
	self log: 'multitracker mode: current tracker moved to first position in tier'.
	multitracker moveCurrentToFirst