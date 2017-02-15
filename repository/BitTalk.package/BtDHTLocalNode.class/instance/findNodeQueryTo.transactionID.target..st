queries
findNodeQueryTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID target: anIntegerTargetID
	| rpc |
	rpc := BtRPC newFindNodeQuery: anIntegerTransactionID queryingNodeID: id target: anIntegerTargetID . 
	self sendRPC: rpc to: aBtDHTRemoteNode