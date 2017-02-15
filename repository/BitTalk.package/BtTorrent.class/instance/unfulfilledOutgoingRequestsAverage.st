P2P - requesting
unfulfilledOutgoingRequestsAverage
	| peers |
	peers := remotePeers selectWithUnfulfilledOutgoingRequests .
	^ (peers
		ifEmpty: [ 0 ]
		ifNotEmpty: [ (peers inject: 0 into: [ :sum :v | sum + v unfulfilledOutgoingRequests size ]) / peers size ]) asFloat