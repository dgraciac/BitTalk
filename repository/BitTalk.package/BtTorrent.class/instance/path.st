piece control
path
	^ torrentLock critical: [ location / (metainfo name) ]