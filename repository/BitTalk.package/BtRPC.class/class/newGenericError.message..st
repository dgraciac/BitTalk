instance creation - errors
newGenericError: anIntegerTransactionID message: aString
	| collection |
	collection := OrderedCollection with: GenericErrorCode with: aString.
	^ self newError: anIntegerTransactionID value: collection 