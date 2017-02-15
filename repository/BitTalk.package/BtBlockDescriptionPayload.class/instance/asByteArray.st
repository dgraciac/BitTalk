converting-arrays
asByteArray
	| bytes |
	bytes := OrderedCollection new.
	bytes
		addAll: (index asByteArrayOfSize: 4);
		addAll: (begin asByteArrayOfSize: 4);
		addAll: (length asByteArrayOfSize: 4).
	^ bytes asByteArray