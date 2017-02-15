operations
selectNext
	| currentTier |
	currentTier := tierCollection at: position.
	tierPosition := tierPosition < currentTier size
		ifTrue: [ tierPosition + 1 ]
		ifFalse: [ 
			position := position < tierCollection size
				ifTrue: [ position + 1 ]
				ifFalse: [ 1 ].
			1 ]