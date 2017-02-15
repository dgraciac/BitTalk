comparing
= anotherBitfield
	^ self == anotherBitfield
		ifTrue: [ true ]
		ifFalse: [ 
			self species = anotherBitfield species
				ifTrue: [ 
					length = anotherBitfield length
						ifTrue: [ 
							numBitsSet = anotherBitfield numBitsSet
								ifTrue: [ 
									((1 to: (length quo: 8)) allSatisfy: [ :index | (self byteAt: index) = (anotherBitfield byteAt: index) ])
										and: [ 
											length > 0
												ifFalse: [ true ]
												ifTrue: [ 
													| lastByte anotherLastByte |
													lastByte := self byteAt: (length / 8) ceiling.
													anotherLastByte := self byteAt: (length / 8) ceiling.
													(1 to: (length rem: 8)) allSatisfy: [ :index | (lastByte bitAt: index) = (anotherLastByte bitAt: index) ] ] ] ]
								ifFalse: [ false ] ]
						ifFalse: [ false ] ]
				ifFalse: [ false ] ]