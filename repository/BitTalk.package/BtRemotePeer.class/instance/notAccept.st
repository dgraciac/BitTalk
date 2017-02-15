operations
notAccept
	self
		sendChoke;
		discardOutgoingBlocks;
		discardUnfulfilledIncomingRequests;
		isAccepted: false