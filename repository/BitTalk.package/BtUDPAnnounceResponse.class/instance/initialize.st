initialize-release
initialize
	super initialize.
	interval := 0.
	leechers := 0.
	nodeCollection := Set new.
	seeders := 0.
	transaction actionCode: BtUDPTransaction announceActionCode .