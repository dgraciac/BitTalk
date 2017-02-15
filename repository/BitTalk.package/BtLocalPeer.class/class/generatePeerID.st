operations
generatePeerID
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPut: $- asInteger;
		nextPutAll: 'bt' asByteArray;
		nextPutAll: ((10000 atRandom - 1) asString padLeftTo: 4 with: $0) asByteArray;
		nextPut: $- asInteger;
		nextPutAll: ((2 raisedTo: 96) atRandom - 1) asByteArray.
	^ stream contents asInteger