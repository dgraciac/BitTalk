private - P2P - requesting
blocksForRequestingInSmartMode
	^ self isUsingMostCommonPolicy
		ifTrue: [ self mostCommonPiecesOnNetwork ]
		ifFalse: [ self rarestPiecesOnNetwork ]