queries
announcePeerQueryTo: aBtDHTRemoteNode transactionID: anIntegerTransactionID impliedPort: anIntegerImpliedPort infohash: anIntegerInfohash port: anIntegerPort token: anIntegerToken
	| rpc |
	rpc := BtRPC newAnnouncePeerQuery: anIntegerTransactionID queryingNodeID: id impliedPort: anIntegerImpliedPort infohash: anIntegerInfohash port: anIntegerPort token: anIntegerToken.
	self sendRPC: rpc to: aBtDHTRemoteNode