operations
sendGET: httpGET
	^[ 
		| clientSocket  |
		[		
			clientSocket := SocketStream openConnectionToHost: domain address asIPv4 port: (port ifNil: [80] ifNotNil: [port]) timeout: 3.
			clientSocket binary.
			clientSocket nextPutAllFlush: httpGET asByteArray .
			clientSocket upToEnd 
		] ensure: [ clientSocket ifNotNil: [ clientSocket close ] ]
	] on: NameLookupFailure , ConnectionClosed , ConnectionTimedOut do: [ :ex |  ex return ] .