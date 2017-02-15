private - instance creation
newError: anIntegerTransactionID value: anOrderedCollection
	| krpc |
	krpc := self newMessage: anIntegerTransactionID.
	^ krpc
		at: TypeKey put: ErrorValue ;
		at: ErrorKey put: anOrderedCollection;
		yourself