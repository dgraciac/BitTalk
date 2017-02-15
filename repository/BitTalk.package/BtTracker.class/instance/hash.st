comparing
hash
"Hash is reimplemented because = is implemented."
	| collection |
	collection := WriteStream with: ByteArray new.
	collection nextPutAll: domain hash asByteArray .
	collection nextPutAll: port hash asByteArray .
	collection nextPutAll: path hash asByteArray .
	^collection contents hash