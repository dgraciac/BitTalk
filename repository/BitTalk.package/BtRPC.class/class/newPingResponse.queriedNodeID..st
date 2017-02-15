instance creation - responses
newPingResponse: anIntegerTransactionID queriedNodeID: anInteger
	| arguments |
	arguments := Dictionary new.
	arguments at: IdKey put: (anInteger asByteArrayOfSize: 20) asString. 
	^ self newResponse: anIntegerTransactionID return: arguments 