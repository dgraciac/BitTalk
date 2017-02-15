operations
receiveNextRPCAndNode
	| buffer result address remotePort rpc dhtRemoteNode |
	buffer := ByteArray new: 2000.
	result := nil.
	[ result first = 0 ] whileTrue: [ result := socket socket receiveUDPDataInto: buffer ].
	result fourth
		ifTrue: [ self error: 'Incomplete datagram' ].
	address := result second.
	remotePort := result third.
	rpc := BtRPC from: (buffer copyFrom: 1 to: result first) bedecoded.
	dhtRemoteNode := BtDHTRemoteNode address: address asInteger port: remotePort.
	rpc isQuery
		ifTrue: [ dhtRemoteNode id: ((rpc at: BtRPC argumentKey) at: BtRPC idKey) ]
		ifFalse: [ 
			rpc isResponse
				ifTrue: [ dhtRemoteNode id: ((rpc at: BtRPC responseKey) at: BtRPC idKey) ] ].
	^ {rpc.
	dhtRemoteNode}