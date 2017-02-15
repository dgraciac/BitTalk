converting-arrays
asByteArray
	^ super asByteArray, ( connectionID asByteArrayOfSize: 8)
	