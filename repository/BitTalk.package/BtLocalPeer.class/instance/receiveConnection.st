operations
receiveConnection
	| remotePeer |
	remotePeer := self waitForConnectionFor: 1.
	remotePeer
		ifNotNil: [ 
			[ 
			| torrent |
			torrent := [ self giveHandshake: remotePeer	"Transcript show: 'Exito'; cr" ]
				on: ConnectionTimedOut , BtMessageError , BtHandshakeError , BtMaxConnectionsReached
				do: [ :ex | 
					"Transcript show: 'Error en la conexión: ' , ex asString; cr."
					remotePeer
						terminate;
						destroy.
					ex return: nil ].
			torrent
				ifNotNil: [ 
					torrent addRemotePeer: remotePeer.
					self log: 'torrent: ' , torrent asString , ' added'	"Transcript show: 'peer remoto añadido'; cr." ] ]
				forkAt: Processor userBackgroundPriority ]