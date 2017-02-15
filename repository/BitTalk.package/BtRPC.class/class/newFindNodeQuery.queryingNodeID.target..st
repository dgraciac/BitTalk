instance creation - queries
newFindNodeQuery: anIntegerTransactionID queryingNodeID: anIntegerQueryingNodeID target: anIntegerTarget
	| arguments |
	arguments := Dictionary new.
	arguments
		at: IdKey put: (anIntegerQueryingNodeID asByteArrayOfSize: 20) asString;
		at: 'target' put: (anIntegerQueryingNodeID asByteArrayOfSize: 20) asString.
	^ self newQuery: anIntegerTransactionID methodName: 'find_node' arguments: arguments