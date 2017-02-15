handling received messages
handleReceivedNotInterested: message remotePeer: remotePeer
	torrentLock
		critical: [ 
			self newRemotePeerNotInterested: remotePeer.
			remotePeer isInterested: false. 
		]