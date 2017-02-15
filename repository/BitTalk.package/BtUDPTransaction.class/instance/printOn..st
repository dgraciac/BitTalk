printing
printOn: aStream
	| type |
	type := 'Null'.
	actionCode = ConnectActionCode
		ifTrue: [ type := 'connect' ].
	actionCode = AnnounceActionCode
		ifTrue: [ type := 'announce' ].
	actionCode = ScrapeActionCode
		ifTrue: [ type := 'scrape' ].
	actionCode = ErrorActionCode
		ifTrue: [ type := 'error' ].
	aStream
		nextPutAll: 'Transaction: ';
		nextPutAll: type;
		nextPutAll: ', ';
		nextPutAll: id asString