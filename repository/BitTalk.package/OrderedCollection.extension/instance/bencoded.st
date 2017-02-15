*BitTalk
bencoded
	| stream |
	stream := WriteStream with: ByteArray new.
	stream nextPutAll: 'l' asByteArray.
	self do: [ :y | stream nextPutAll: y bencoded ].
	stream nextPutAll: 'e' asByteArray.
	^ stream contents 