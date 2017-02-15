private - P2P - requesting
blocksForRequestingInStreamingMode
	^ self lowestPiecesOnNetworkGreaterThan: bitfield firstBitClear - 1