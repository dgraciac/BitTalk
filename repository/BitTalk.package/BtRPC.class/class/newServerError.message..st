instance creation - errors
newServerError: anIntegerTransactionID message: aString
	| collection |
	collection := OrderedCollection with: ServerErrorCode with: aString.
	^ self newError: anIntegerTransactionID value: collection