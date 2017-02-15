instance creation - responses
newGetPeersResponse: anIntegerTransactionID queriedNodeID: anIntegerQueriedNodeID token: anIntegerToken nodes: aString
	| arguments |
	arguments := Dictionary new.
	arguments
		at: IdKey put: (anIntegerQueriedNodeID asByteArrayOfSize: 20) asString;
		at: 'token' put: (anIntegerToken asByteArrayOfSize: 8) asString;
		at: 'values' put: aString.
	^ self newResponse: anIntegerTransactionID return: arguments