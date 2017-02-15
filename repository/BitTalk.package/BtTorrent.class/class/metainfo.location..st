instance creation
metainfo: metainfo location: fileRef
	| torrent |
	torrent:=BtTorrent new
		metainfo: metainfo;
		location: fileRef;
		yourself.
	torrent supportMultitracker ifTrue:[ torrent setMultitrackerMode ].
	^ torrent