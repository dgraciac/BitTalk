comparing
hash
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: super hash asByteArray;
		nextPutAll: message hash asByteArray.
	^ stream contents hash