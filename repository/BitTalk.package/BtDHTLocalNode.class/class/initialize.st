initialize-release
initialize
	super initialize.
	DefaultMaxInactivityPeriod := 15*60*1000.
	MaxInactivityPeriod := DefaultMaxInactivityPeriod .