initialize-release
initialize
	super initialize .
	StoreLocation := 'storeLocation'.
	DefaultMaxConnections := 10.
	DefaultTrackerRequestPeriod := 60.
	DefaultMaxPeersAccepted := 4.
	DefaultBlockSize := 2 raisedTo: 14.
	DefaultMaxSecondsForStopping := 2.
	MaxTimeWithoutReceivedBlocks := 60.
	DefaultMaxUnfulfilledOutgoingRequestsPerPeer := 20.
	SmartMode := 1.
	StreamingMode := 2.