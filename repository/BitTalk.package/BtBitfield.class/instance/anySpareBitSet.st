testing
anySpareBitSet
	^ length = (field size * 8)
		ifTrue:[false]
		ifFalse:[
			self enumerateSpareBits anySatisfy: [ :index | 
				|  byteIndex bitIndex |
				byteIndex:= self class byteIndex: index .					
				bitIndex:= self class bitIndex: index .
				((field at: byteIndex) bitAt: 9 - bitIndex) = 1
			]
		]