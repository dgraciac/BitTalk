messages-receive
receiveNextMessage
	| length stream prefix |
	prefix := self receiveNext: 4.
	stream := WriteStream with: prefix.
	length := prefix asInteger.
	length > 0
		ifTrue: [ stream nextPutAll: (self receiveNext: length) ].
	^ stream contents decodeMessage