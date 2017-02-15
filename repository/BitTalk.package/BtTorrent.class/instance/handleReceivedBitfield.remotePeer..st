handling received messages
handleReceivedBitfield: message remotePeer: remotePeer
	| remoteBitfield |
	remoteBitfield := message payload bitfield.
	remoteBitfield length < metainfo numPieces
		ifTrue: [ self discardRemotePeer: remotePeer ]
		ifFalse: [ 
			remoteBitfield reduceTo: metainfo numPieces.
			torrentLock
				critical: [ 
					remoteBitfield anySpareBitSet
						ifTrue: [ self discardRemotePeer: remotePeer ]
						ifFalse: [ 
							remotePeer bitfield
								ifNotNil: [ 
									| interestingBitfield |
									interestingBitfield := remotePeer bitfield interestingBitfield: remoteBitfield.
									interestingBitfield bitsSet do: [ :index | piecesOnNetwork modifyAt: index by: 1 ] ]
								ifNil: [ remoteBitfield bitsSet do: [ :index | piecesOnNetwork modifyAt: index by: 1 ] ].
							remotePeer
								bitfield: remoteBitfield;
								updateInterest: bitfield ] ] ]