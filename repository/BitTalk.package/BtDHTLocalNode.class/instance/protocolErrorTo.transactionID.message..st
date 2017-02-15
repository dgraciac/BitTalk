errors
protocolErrorTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID message: aString
	| rpc |
	rpc := BtRPC newProtocolError: anIntegerTransactionID message: aString.
	self sendRPC: rpc to: aBtDHTRemoteNode