P2P - requesting
broadcastRequestMissingBlocks: indexCollection
	torrentLock critical: [ indexCollection do: [ :pieceIndex | self broadcastRequestMissingBlocksAt: pieceIndex ] ]