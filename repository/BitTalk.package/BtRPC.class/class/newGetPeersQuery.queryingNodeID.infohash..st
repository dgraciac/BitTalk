instance creation - queries
newGetPeersQuery: anIntegerTransactionID queryingNodeID: anIntegerQueryingNodeID infohash: anIntegerInfohash
	| arguments |
	arguments := Dictionary new.
	arguments
		at: IdKey put: (anIntegerQueryingNodeID asByteArrayOfSize: 20) asString;
		at: 'info_hash' put: (anIntegerInfohash asByteArrayOfSize: 20) asString.
	^ self newQuery: anIntegerTransactionID methodName: 'geet_peers' arguments: arguments