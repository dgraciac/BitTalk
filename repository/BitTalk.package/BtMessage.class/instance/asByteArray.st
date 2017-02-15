converting-arrays
asByteArray
	| bytesPayload length message |
	length := type ifNil: [ 0 ] ifNotNil: [ 1 ].
	bytesPayload := payload ifNil: [ ByteArray new ] ifNotNil: [ payload asByteArray ].
	length := length + bytesPayload size.
	message := OrderedCollection new.
	message addAll: (length asByteArrayOfSize: 4).
	type ifNotNil: [ message add: type ].
	message addAll: bytesPayload.
	^ message asByteArray