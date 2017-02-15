P2P
clearUnfulfilledOutgoingRequestsThatAreMissingOnNetwork
	torrentLock
		critical: [ 
			| requestedTemporaryBlocksToClear |
			requestedTemporaryBlocksToClear := self requestedTemporaryBlocks difference: self unfulfilledOutgoingRequestsOnNetwork.
			requestedTemporaryBlocksToClear
				do: [ :requestedTemporaryBlock | (temporaryPieces at: requestedTemporaryBlock pieceIndex + 1) clearRequest: requestedTemporaryBlock offset ] ]