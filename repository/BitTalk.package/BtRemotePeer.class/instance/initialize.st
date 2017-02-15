initialize-release
initialize
	super initialize.
	isAccepted:= false.
	isInteresting:= false.
	acceptsMe:= false.
	isInterested:= false.
	isLucky:= false.
	bitfield := nil.
	downloaded:= BtByteDisplay new.
	uploaded:= BtByteDisplay new.
	lastDownloaded := BtByteDisplay new.
	lastUploaded := BtByteDisplay new.
	startMeasuringTime := 0.
	connectTimeout := 0.3.
	self initializeProcesses .
	outMessageQueue := BtMessageQueue new.	
	inMessageQueue := BtMessageQueue new.
	lastMessageSentTime := nil.
	lastMessageReceivedTime := nil.
	lastBlockReceivedTime := nil.
	unfulfilledOutgoingRequests := OrderedCollection new.
	peerLock := Monitor new.