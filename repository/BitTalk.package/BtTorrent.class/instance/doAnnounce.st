peer discovery
doAnnounce
	self selectLastTracker.
	[ 
	self selectNextTracker.
	self updateAnnounceRequest.
	self currentTracker announce.
	Processor yield ] doWhileTrue: [ self announceHasFailed ].
	self lastAnnounceEventIsCompleted
		ifTrue: [ alreadyComplete := true ]
		ifFalse: [ started := true ].
	self moveCurrentTrackerToFirstInTier.
	self updateRemotePeers