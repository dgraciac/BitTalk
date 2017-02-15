comparing
hash
	| stream |
	stream := WriteStream with: (super hash asByteArray).
	stream nextPutAll: connectionID hash asByteArray .
	^ stream contents hash