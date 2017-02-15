errors
methodUnknownErrorTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID message: aString
	| rpc |
	rpc := BtRPC newMethodUnknownError: anIntegerTransactionID message: aString.
	self sendRPC: rpc to: aBtDHTRemoteNode