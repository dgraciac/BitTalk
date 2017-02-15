converting-arrays
asByteArray
	^ (connectionID asByteArrayOfSize: 8) , (super asByteArray)