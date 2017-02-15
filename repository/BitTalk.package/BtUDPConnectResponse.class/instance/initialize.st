initialize-release
initialize
	super initialize.
	connectionID := 0.
	transaction actionCode: BtUDPTransaction connectActionCode .