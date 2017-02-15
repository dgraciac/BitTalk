instance creation - responses
newFindNodeResponse: anIntegerTransactionID queriedNodeID: anInteger nodes: aString
	| arguments |
	arguments := Dictionary new.
	arguments
		at: IdKey put: (anInteger asByteArrayOfSize: 20) asString;
		at: 'nodes' put: aString.
	^ self newResponse: anIntegerTransactionID return: arguments