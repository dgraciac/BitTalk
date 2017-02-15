queries
getPeersQueryTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID swarm: anIntegerInfohash
	| rpc |
	rpc := BtRPC newGetPeersQuery: anIntegerTransactionID queryingNodeID: id infohash: anIntegerInfohash.
	self sendRPC: rpc to: aBtDHTRemoteNode