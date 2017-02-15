peer discovery
newUDPAnnounceRequest
	^ torrentLock
		critical: [ 
			| announceRequest |
			announceRequest := BtUDPAnnounceRequest new.
			announceRequest
				infoHash: metainfo hash;
				peerID: id;
				uploaded: self uploaded amount;
				downloaded: self downloaded amount;
				left: self left;
				numWant: 0;
				key: 0;
				node:
						(BtNode new
								domain: (BtDomain new address: 0);
								port: port).
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