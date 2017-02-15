initialize-release
initialize
	super initialize.
	firstID := DefaultFirstID.
	lastID := DefaultLastID.
	left := rigth := nil.
	lastChangeTime := Time millisecondClockValue.
	k := DefaultK.
	self sortBlock: [ :a :b | a lessOrEqualRecentlySeenThan: b ]