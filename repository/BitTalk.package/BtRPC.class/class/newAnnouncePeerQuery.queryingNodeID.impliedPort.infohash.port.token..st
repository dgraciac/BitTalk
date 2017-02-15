instance creation - queries
newAnnouncePeerQuery: anIntegerTransactionID queryingNodeID: anIntegerQueryingNodeID impliedPort: anIntegerImpliedPort infohash: anIntegerInfohash port: anIntegerPort token: anIntegerToken
	| arguments |
	arguments := Dictionary new.
	arguments
		at: IdKey put: (anIntegerQueryingNodeID asByteArrayOfSize: 20) asString;
		at: 'implied_port' put: anIntegerImpliedPort;
		at: 'info_hash' put: (anIntegerInfohash asByteArrayOfSize: 20) asString;
		at: 'port' put: anIntegerPort;
		at: 'token' put: (anIntegerToken asByteArrayOfSize: 8) asString.
	^ self newQuery: anIntegerTransactionID methodName: 'announce_peer' arguments: arguments