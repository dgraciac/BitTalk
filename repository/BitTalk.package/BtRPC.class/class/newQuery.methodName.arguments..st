private - instance creation
newQuery: anIntegerTransactionID methodName: aString arguments: aDictionary
	| krpc |
	krpc := self newMessage: anIntegerTransactionID.
	^ krpc
		at: TypeKey put: QueryValue ;
		at: QueryKey put: aString;
		at: ArgumentKey put: aDictionary;
		yourself