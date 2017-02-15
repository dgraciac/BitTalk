*BitTalk
asFileReference
	| fileRef |
	fileRef := FileSystem root.
	self isNotEmpty
		ifTrue: [ fileRef := self inject: fileRef into: [ :x :y | x / y ] ].
	^ fileRef