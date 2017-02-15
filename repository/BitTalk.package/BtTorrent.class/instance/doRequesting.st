P2P - requesting
doRequesting
	| halfwayNotFullRequestedPieces |
	halfwayNotFullRequestedPieces := self halfwayNotFullRequestedPieces difference: self missingPiecesOnNetwork.
	self isInEndGame
		ifTrue: [ self broadcastRequestMissingBlocks: halfwayNotFullRequestedPieces ]
		ifFalse: [ 
			self requestMissingAndNotRequestedBlocksOf: halfwayNotFullRequestedPieces.
			self isUsingStreamingMode
				ifTrue: [ 
					self
						requestMissingAndNotRequestedBlocksOf:
							(self blocksForRequestingInStreamingMode difference: halfwayNotFullRequestedPieces) ]
				ifFalse: [ 
					self
						requestMissingAndNotRequestedBlocksOf:
							(self blocksForRequestingInSmartMode difference: halfwayNotFullRequestedPieces) ] ]