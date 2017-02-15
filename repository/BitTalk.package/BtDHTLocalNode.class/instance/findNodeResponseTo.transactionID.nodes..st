responses
findNodeResponseTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID nodes: aStringNodes
	| rpc |
	rpc := BtRPC newFindNodeResponse: anIntegerTransactionID queriedNodeID: id nodes: aStringNodes.
	self sendRPC: rpc to: aBtDHTRemoteNode