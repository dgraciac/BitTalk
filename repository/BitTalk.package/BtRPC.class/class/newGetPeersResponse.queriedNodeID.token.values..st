instance creation - responses
newGetPeersResponse: anIntegerTransactionID queriedNodeID: anIntegerQueriedNodeID token: anIntegerToken values: anOrderedCollection
	| arguments |
	arguments := Dictionary new.
	arguments
		at: IdKey put: (anIntegerQueriedNodeID asByteArrayOfSize: 20) asString;
		at: 'token' put: (anIntegerToken asByteArrayOfSize: 8) asString;
		at: 'values' put: anOrderedCollection.
	^ self newResponse: anIntegerTransactionID return: arguments