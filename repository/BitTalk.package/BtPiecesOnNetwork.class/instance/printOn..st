printing
printOn: aStream
	aStream
		nextPutAll: 'index->count';
		nextPutAll: String cr.
	collection do: [ :each | aStream nextPutAll: each asString ] separatedBy: [ aStream nextPutAll: String cr ]