instance creation - queries
newPingQuery: anIntegerTransactionID queryingNodeID: anInteger
	|  arguments |
	arguments:= Dictionary new.
	arguments at: IdKey put: (anInteger asByteArrayOfSize: 20) asString.
	^ self newQuery: anIntegerTransactionID methodName: 'ping' arguments: arguments. 