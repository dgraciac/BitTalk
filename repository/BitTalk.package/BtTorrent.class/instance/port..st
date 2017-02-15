accessing
port: newPort
	port ~= newPort
		ifTrue: [ 
			torrentLock
				critical: [ 
					port := newPort.
					self discardAllRemotePeers ] ]