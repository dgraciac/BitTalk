piece control
requestedTemporaryBlocks
	^ torrentLock
		critical: [ 
			| blockRequests |
			blockRequests := OrderedCollection new.
			temporaryPieces
				doWithIndex: [ :piece :index | 
					| pendingBlocks |
					pendingBlocks := piece requestedBlocks.
					blockRequests
						addAll:
							((1 to: pendingBlocks size)
								inject: OrderedCollection new
								into: [ :collection :offsetIndex | 
									| offset |
									offset := pendingBlocks at: offsetIndex.
									collection
										add: (BtBlockRequest pieceIndex: index - 1 offset: offset length: (piece blockSizeOf: offset));
										yourself ]) ].
			blockRequests ]