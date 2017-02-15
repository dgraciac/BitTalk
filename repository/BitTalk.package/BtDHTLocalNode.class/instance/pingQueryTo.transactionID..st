queries
pingQueryTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID
	| rpc |
	rpc := BtRPC newPingQuery: anIntegerTransactionID queryingNodeID: id.
	self sendRPC: rpc to: aBtDHTRemoteNode