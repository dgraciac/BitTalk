private - operations
receivePacket
	| packetSize bufferIn packet |  
	packetSize := 0.
	bufferIn := ByteArray new: 2000.
	[ packetSize = 0 ]
		whileTrue: [ 
			packetSize := socket receiveDataInto: bufferIn fromHost: domain address asIPv4 port: port.
			Processor yield ].
	packet := (bufferIn copyFrom: 1 to: packetSize) decodeUDPResponse.
	self log: 'RECEIVED: ' , packet asString , ' from: ' , domain address asIPv4 dotted , ':' , port asString.
	^ packet