operations
updateInterest: localBitfield
	peerLock
		critical: [ 
			| interestingBitfield |
			interestingBitfield := localBitfield interestingBitfield: bitfield.
			interestingBitfield numBitsSet > 0
				ifTrue: [ 
					isInteresting
						ifFalse: [ self setInteresting ] ]
				ifFalse: [ 
					isInteresting
						ifTrue: [ self setNotInteresting ] ] ]