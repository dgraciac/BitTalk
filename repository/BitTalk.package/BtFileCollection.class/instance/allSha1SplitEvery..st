operations
allSha1SplitEvery: pieceLength
	|  numPieces sha1Values |
	self checkAllComplete.
	sha1Values := WriteStream with: ByteArray new.
	numPieces := (self length / pieceLength) ceiling.
	0 to: numPieces - 1 do: [ :index | 
		|amount|
		amount := pieceLength min: self length - (index * pieceLength). 
		sha1Values nextPutAll: (self sha1Offset: index * pieceLength amount: amount) ].
	^ sha1Values contents 