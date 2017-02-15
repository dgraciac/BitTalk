comparing
hash
	"Hash is reimplemented because = is implemented."

	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: domain hash asByteArray;
		nextPutAll: port hash asByteArray.
	^ stream contents hash