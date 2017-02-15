P2P
connectTo: remotePeer
	[ 
	remotePeer connect.
	remotePeer sendHandshake: self hash id: id.
	self checkHandshake: remotePeer receiveHandshake.
	remotePeer resume.
	self addRemotePeer: remotePeer.
	self log: remotePeer asString , ' added' ]
		on: ConnectionTimedOut , BtHandshakeError , BtMessageError
		do: [ :ex | 
			remotePeer
				terminate;
				destroy.
			self log: 'Error adding ' , remotePeer asString , ': ' , ex asString.
			ex return ]