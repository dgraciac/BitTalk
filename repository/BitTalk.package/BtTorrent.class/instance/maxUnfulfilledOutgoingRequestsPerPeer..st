private - P2P - requesting
maxUnfulfilledOutgoingRequestsPerPeer: anInteger
	torrentLock critical: [ maxUnfulfilledOutgoingRequestsPerPeer := anInteger ]