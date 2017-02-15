operations
updateConnectionsPerTorrent
	| remaining index activeTorrents numTorrents connectionsPerTorrent |
	remaining := maxConnections.
	activeTorrents := torrents select: [ :torrent | torrent isActive ].
	numTorrents := activeTorrents size.
	connectionsPerTorrent := [ maxConnections quo: numTorrents ]
		on: ZeroDivide
		do: [ :ex | ex return: nil ].
	connectionsPerTorrent ifNil: [ ^ self ].
	activeTorrents do: [ :torrent | torrent maxConnections: connectionsPerTorrent ].
	remaining := maxConnections rem: numTorrents.
	index := 1.
	[ remaining > 0 and: [ index <= numTorrents ] ]
		whileTrue: [ 
			(activeTorrents at: index) modifyMaxConnectionsBy: 1.
			remaining := remaining - 1.
			index := index + 1 ]