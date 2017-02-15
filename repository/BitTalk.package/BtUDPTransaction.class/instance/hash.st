comparing
hash
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: actionCode hash asByteArray;
		nextPutAll: id hash asByteArray.
	^ stream contents hash