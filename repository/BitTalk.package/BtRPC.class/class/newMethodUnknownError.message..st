instance creation - errors
newMethodUnknownError: anIntegerTransactionID message: aString
	| collection |
	collection := OrderedCollection with: MethodUnknownErrorCode with: aString.
	^ self newError: anIntegerTransactionID value: collection