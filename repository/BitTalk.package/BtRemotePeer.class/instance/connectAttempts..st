operations
connectAttempts: attempts
	| t timeout |
	t := 0.
	timeout := connectTimeout.
	[ 
	self isConnected
		ifTrue: [ ^ self ].
	socketStream := SocketStream openConnectionToHost: domain address asIPv4 port: port timeout: timeout.
	socketStream binary.
	self setTimeOut ]
		on: ConnectionTimedOut
		do: [ :ex | 
			t := t + 1.
			timeout := timeout + 0.3.
			t < attempts
				ifTrue: [ ex retry ]
				ifFalse: [ ex return ] ].
	self isConnected
		ifFalse: [ ConnectionTimedOut signal ]