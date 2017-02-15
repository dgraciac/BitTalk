printing
printOn: aStream
	| queryString percentEncoder |
	percentEncoder := ZnPercentEncoder new.
	percentEncoder characterEncoder: ZnNullEncoder new.
	queryString := WriteStream with: String new.
	trackerID
		ifNotNil: [ 
			queryString
				nextPutAll: 'trackerid=';
				nextPutAll: (percentEncoder encode: trackerID asByteArray asString);
				nextPutAll: '&' ].
	event
		ifNotNil: [ 
			queryString
				nextPutAll: 'event=';
				nextPutAll: event;
				nextPutAll: '&' ].
	node domain address = 0
		ifFalse: [ 
			queryString
				nextPutAll: 'ip=';
				nextPutAll: node domain address asIPv4 dotted;
				nextPutAll: '&' ].
	queryString
		nextPutAll: 'key=';
		nextPutAll: (percentEncoder encode: key asByteArray asString);
		nextPutAll: '&';
		nextPutAll: 'numwant=';
		nextPutAll: numWant asString;
		nextPutAll: '&';
		nextPutAll: 'info_hash=';
		nextPutAll: (percentEncoder encode: infoHash asByteArray asString);
		nextPutAll: '&';
		nextPutAll: 'peer_id=';
		nextPutAll: (percentEncoder encode: peerID asByteArray asString);
		nextPutAll: '&';
		nextPutAll: 'port=';
		nextPutAll: node port asString;
		nextPutAll: '&';
		nextPutAll: 'uploaded=';
		nextPutAll: uploaded asString;
		nextPutAll: '&';
		nextPutAll: 'downloaded=';
		nextPutAll: downloaded asString;
		nextPutAll: '&';
		nextPutAll: 'left=';
		nextPutAll: left asString;
		nextPutAll: '&';
		nextPutAll: 'compact=';
		nextPutAll: compact asString;
		nextPutAll: '&';
		nextPutAll: 'no_peer_id=';
		nextPutAll: noPeerID asString.
	aStream nextPutAll: queryString contents.