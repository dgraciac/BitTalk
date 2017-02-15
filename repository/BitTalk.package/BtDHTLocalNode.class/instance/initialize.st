initialize-release
initialize
	super initialize.
	socket := Socket newUDP.
	socket setPort: port.
	incomingTransactionIDs := OrderedCollection new.
	outgoingTransactionIDs := OrderedCollection new.
	inQueue := SharedQueue new.
	outQueue := SharedQueue new.
	bucketTree := BtBucketTree new.
	self initializeProcesses