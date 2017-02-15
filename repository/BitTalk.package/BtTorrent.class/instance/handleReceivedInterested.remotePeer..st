handling received messages
handleReceivedInterested: message remotePeer: remotePeer
	torrentLock
		critical: [ 
			self newRemotePeerInterested: remotePeer.
			remotePeer isInterested: true ]