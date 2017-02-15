private - instance creation
newMessage: anIntegerTransactionID
	| krpc |
	krpc := self new.
	^ krpc
		at: TransactionKey put: (anIntegerTransactionID asByteArrayOfSize: 2) asString;
		at: TypeKey put: nil;
		yourself