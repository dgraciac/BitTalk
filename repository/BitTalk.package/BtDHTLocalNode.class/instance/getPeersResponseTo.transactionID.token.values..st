responses
getPeersResponseTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID token: anIntegerToken values: anOrderedCollectionValues
	| rpc |
	rpc := BtRPC
		newGetPeersResponse: anIntegerTransactionID
		queriedNodeID: id
		token: anIntegerToken
		values: anOrderedCollectionValues.
	self sendRPC: rpc to: aBtDHTRemoteNode