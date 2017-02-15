instance creation - errors
newProtocolError: anIntegerTransactionID message: aString
	| collection |
	collection := OrderedCollection with: ProtocolErrorCode with: aString.
	^ self newError: anIntegerTransactionID value: collection