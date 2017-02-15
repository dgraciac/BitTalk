private - P2P - requesting
maxUnfulfilledOutgoingRequestsPerPeer
	^ torrentLock critical: [ maxUnfulfilledOutgoingRequestsPerPeer ]