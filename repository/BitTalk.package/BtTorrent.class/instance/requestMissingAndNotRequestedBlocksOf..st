P2P - requesting
requestMissingAndNotRequestedBlocksOf: indexCollection
	torrentLock critical: [ indexCollection do: [ :pieceIndex | self requestMissingAndNotRequestedBlocksAt: pieceIndex ] ]