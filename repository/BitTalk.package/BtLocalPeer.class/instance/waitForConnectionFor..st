private - operations
waitForConnectionFor: seconds
	|  newSocket |
	newSocket := receiverSocket waitForAcceptFor: seconds ifTimedOut: [ nil ].
	^ newSocket
		ifNil:[ nil ]
		ifNotNil: [ 
			self log: 'new socket'.	"Transcript show: 'Conexión entrante'; cr."
			(BtRemotePeer on: (SocketStream on: newSocket)) debug: debug ]