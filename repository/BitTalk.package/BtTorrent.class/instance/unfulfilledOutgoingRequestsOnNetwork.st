piece control
unfulfilledOutgoingRequestsOnNetwork
	^torrentLock critical: [ 
		| requestedBlocks |
		requestedBlocks:=OrderedCollection new.
		remotePeers do:[:peer| requestedBlocks addAll: peer unfulfilledOutgoingRequests ].
		requestedBlocks 		 
	]