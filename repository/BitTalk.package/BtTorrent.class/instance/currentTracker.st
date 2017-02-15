peer discovery
currentTracker
	^self isInMultitrackerMode
		ifTrue:[multitracker current ]
		ifFalse:[tracker].