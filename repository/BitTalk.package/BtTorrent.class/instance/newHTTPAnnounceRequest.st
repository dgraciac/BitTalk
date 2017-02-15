peer discovery
newHTTPAnnounceRequest
	^ torrentLock
		critical: [ 
			| announceRequest |
			announceRequest := BtHTTPAnnounceQuery new.
			announceRequest
				infoHash: metainfo hash;
				peerID: id;
				node:
						(BtNode new
								domain: (BtDomain new address: 0);
								port: port);
				uploaded: self uploaded amount;
				downloaded: self downloaded amount;
				left: self left;
				compact: 1;
				noPeerID: 1;
				numWant: 0.
			announceRequest setNone.
			stopPending
				ifTrue: [ announceRequest setStopped ]
				ifFalse: [ 
					started
						ifFalse: [ 
							announceRequest setStarted.
							self isComplete
								ifFalse: [ announceRequest numWant: self numNewConnectionsDesired * 100 ] ]
						ifTrue: [ 
							self isComplete
								ifTrue: [ 
									alreadyComplete
										ifFalse: [ announceRequest setCompleted ] ]
								ifFalse: [ announceRequest numWant: self numNewConnectionsDesired * 100 ] ] ].
			announceRequest ]