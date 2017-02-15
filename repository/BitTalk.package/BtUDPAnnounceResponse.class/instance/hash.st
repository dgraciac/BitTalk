comparing
hash
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: super hash asByteArray;
		nextPutAll: seeders hash asByteArray;
		nextPutAll: leechers hash asByteArray;
		nextPutAll: interval hash asByteArray;
		nextPutAll: nodeCollection hash asByteArray.
	^ stream contents hash