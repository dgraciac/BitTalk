initialize-release
initialize
	super initialize.
	torrents := OrderedCollection new.
	id := self class generatePeerID.
	localPeerLock := Monitor new.
	maxConnections := DefaultMaxConnections.
	receiverSocket := Socket newTCP.
	self initializeProcesses.
	self port: self class generateRandomPort.