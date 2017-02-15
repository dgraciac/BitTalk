tests-operations
testAllSha1SplitEvery
	| pieceLength |
	pieceLength := 8.
	self setCase1.
	self
		assert: (fileCollection allSha1SplitEvery: pieceLength) = (SHA1 hashStream: '12345678' asByteArray readStream).
	pieceLength := 4.
	self
		assert:
			(fileCollection allSha1SplitEvery: pieceLength)
				= ((SHA1 hashStream: '1234' asByteArray readStream) , (SHA1 hashStream: '5678' asByteArray readStream)).
	pieceLength := 6.
	self
		assert:
			(fileCollection allSha1SplitEvery: pieceLength)
				= ((SHA1 hashStream: '123456' asByteArray readStream) , (SHA1 hashStream: '78' asByteArray readStream))