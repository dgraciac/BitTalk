operations
sha1Offset: offset amount: amount
	^SHA1 hashStream: (self readOffset: offset amount: amount) readStream