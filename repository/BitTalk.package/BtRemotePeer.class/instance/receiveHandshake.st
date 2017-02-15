messages-receive
receiveHandshake
	| stream |
	stream := WriteStream with: (self receiveNext: 68).
	^ stream contents decodeHandshake