printing
printOn: aStream
	self do: [ :each | aStream nextPutAll: each asString ] separatedBy: [ aStream nextPutAll: String cr ]