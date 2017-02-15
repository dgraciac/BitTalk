initialize-release
initializeReceiving
	receiving ifNotNil: [ receiving terminate ].
	receiving := BtExecutableBlock new
		block: [ 
			[ 
			torrentLock
				critical: [ 
					| peersToDiscard size index |
					peersToDiscard := OrderedCollection new.
					size := remotePeers size.
					index := 1.
					[ index <= size ]
						whileTrue: [ 
							| peer |
							peer := remotePeers at: index.
							peer secondsSinceLastReceivedMessage > BtMessage connectionTimeOut
								ifTrue: [ self discardRemotePeer: peer ]
								ifFalse: [ 
									| message |
									message := peer dequeueNextReceivedMessage.
									message ifNotNil: [ self handleReceivedMessage: message remotePeer: peer ] ].
							remotePeers size = size
								ifTrue: [ index := index + 1 ]
								ifFalse: [ size := size - 1 ] ] ].
			Processor yield ] repeat ]