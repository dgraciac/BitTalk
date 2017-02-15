responses
getPeersResponseTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID token: anIntegerToken nodes: aStringNodes
	| rpc |
	rpc := BtRPC
		newGetPeersResponse: anIntegerTransactionID
		queriedNodeID: id
		token: anIntegerToken
		nodes: aStringNodes.
	self sendRPC: rpc to: aBtDHTRemoteNode