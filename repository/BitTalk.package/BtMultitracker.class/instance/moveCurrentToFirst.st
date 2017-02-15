operations
moveCurrentToFirst
	| currentTier |
	tierPosition > 1
		ifFalse: [ ^ self ].
	currentTier := tierCollection at: position.
	currentTier swap: tierPosition with: 1