P2P
updateRemotePeers
	| index newRemotePeers |
	torrentLock
		critical: [ 
			| size |
			newRemotePeers := self readRemotePeersFromAnnounceResponse.
			self log: newRemotePeers size asString , ' remote peers received'.
			size := newRemotePeers size.
			index := 1.
			[ index <= size ]
				whileTrue: [ 
					| peer |
					peer := newRemotePeers at: index.
					(remotePeers includes: peer)
						ifTrue: [ 
							newRemotePeers
								remove:
									(peer
										terminate;
										yourself).
							size := size - 1 ]
						ifFalse: [ index := index + 1 ] ] ].
	self log: newRemotePeers size asString , ' are new'.
	[ remotePeers size <= maxConnections and: [ newRemotePeers isNotEmpty ] ]
		whileTrue: [ 
			self connectTo: newRemotePeers removeLast.
			Processor yield ].
	[ newRemotePeers isEmpty ]
		whileFalse: [ 
			newRemotePeers removeLast
				terminate;
				destroy ].
	self log: 'update remote peers completed'