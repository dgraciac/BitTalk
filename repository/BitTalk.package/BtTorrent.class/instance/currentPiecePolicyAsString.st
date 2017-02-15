piece control
currentPiecePolicyAsString
	^ self isInEndGame
		ifTrue: [ 'End Game' ]
		ifFalse: [ 
			self isUsingStreamingMode
				ifTrue: [ 
					self isUsingLowestPolicy
						ifTrue: [ 'Lowest' ] ]
				ifFalse: [ 
					self isUsingSmartMode
						ifTrue: [ 
							self isUsingMostCommonPolicy
								ifTrue: [ 'Most common' ]
								ifFalse: [ 
									self isUsingRarestPolicy
										ifTrue: [ 'Rarest' ] ] ] ] ]