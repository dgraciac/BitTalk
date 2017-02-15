operations
removeTorrent: aTorrent
	localPeerLock
		critical: [ 
			(torrents includes: aTorrent)
				ifTrue: [ 
					aTorrent stop.
					torrents remove: aTorrent ] ]