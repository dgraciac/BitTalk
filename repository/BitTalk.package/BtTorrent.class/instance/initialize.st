initialize-release
initialize
	super initialize.
	tracker:= nil.
	remotePeers:= BtRemotePeerCollection notCompleteMode .
	port:= 0.
	multitracker:= BtMultitracker new.		
	fileCollection := BtFileCollection new.
	temporaryPieces := OrderedCollection new.	
	maxPeersAccepted:= DefaultMaxPeersAccepted .		
	maxConnections:= DefaultMaxConnections .
	maxUnfulfilledOutgoingRequestsPerPeer := DefaultMaxUnfulfilledOutgoingRequestsPerPeer .
	id := 0.		
	blockSize:= self class defaultBlockSize.
	isInMultitrackerMode := false.
	torrentLock := Monitor new.
	numPiecesDuringMostCommonPolicy := 4.
	downloadMode := SmartMode .
	self initializeProcesses .
	isActive:=false.
	self initializeState.
	debug:= false.