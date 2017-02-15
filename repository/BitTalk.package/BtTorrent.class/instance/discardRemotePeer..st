P2P
discardRemotePeer: remotePeer
	torrentLock
		critical: [ 
			remotePeer
				terminate;
				destroy.
			remotePeer bitfield ifNotNil: [ remotePeer bitfield bitsSet do: [ :index | piecesOnNetwork modifyAt: index by: -1 ] ].
			remotePeers remove: remotePeer.
			self clearUnfulfilledOutgoingRequestsThatAreMissingOnNetwork ].
	self log: remotePeer asString , ' discarded'