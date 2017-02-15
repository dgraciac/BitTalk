errors
serverErrorTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID message: aString
	| rpc |
	rpc := BtRPC newServerError: anIntegerTransactionID message: aString.
	self sendRPC: rpc to: aBtDHTRemoteNode