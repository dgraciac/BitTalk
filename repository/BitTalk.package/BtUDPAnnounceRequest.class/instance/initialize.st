initialize-release
initialize
	super initialize.
	downloaded := 0.
	event := 0.
	infoHash := 0.
	key := 0.
	left := 0.
	node := BtNode new.
	numWant := 0.
	peerID := 0.
	uploaded := 0.
	transaction actionCode: BtUDPTransaction announceActionCode .