operations
addTorrent: aTorrent
	localPeerLock
		critical: [ 
			(torrents includes: aTorrent)
				ifFalse: [ 
					aTorrent
						id: id;
						port: port.
					debug
						ifTrue: [ aTorrent debug: true ].
					torrents add: aTorrent ] ]