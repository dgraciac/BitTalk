accessing
torrents
	^ localPeerLock critical: [ torrents ]