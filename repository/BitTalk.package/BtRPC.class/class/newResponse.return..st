private - instance creation
newResponse: anIntegerTransactionID return: aDictionary
	| krpc |
	krpc := self newMessage: anIntegerTransactionID.
	^ krpc
		at: TypeKey put: ResponseValue ;
		at: ResponseKey put: aDictionary;
		yourself