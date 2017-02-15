errors
genericErrorTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID message: aString
	| rpc |
	rpc := BtRPC newGenericError: anIntegerTransactionID message: aString.
	self sendRPC: rpc to: aBtDHTRemoteNode