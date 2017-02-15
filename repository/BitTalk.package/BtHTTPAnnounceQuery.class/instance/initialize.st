initialize-release
initialize
	super initialize.
	compact := 1.
	downloaded := 0.
	event := nil.
	infoHash := 0.
	node := BtNode new domain: (BtDomain new address: 0); port: 0.
	key := 0.
	left := 0.
	noPeerID := 0.
	numWant := 50.
	peerID := 0.
	trackerID := nil.
	uploaded := 0