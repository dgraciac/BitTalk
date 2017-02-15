converting-arrays
asByteArray
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: super asByteArray;
		nextPutAll: (interval asByteArrayOfSize: 4);
		nextPutAll: (leechers asByteArrayOfSize: 4);
		nextPutAll: (seeders asByteArrayOfSize: 4).
	nodeCollection
		do: [ :node | 
			stream
				nextPutAll: node domain address asIPv4;
				nextPutAll: node port asPortNumber ].
	^ stream contents