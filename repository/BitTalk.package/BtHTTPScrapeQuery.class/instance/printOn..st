printing
printOn: aStream
	| queryString percentEncoder |
	percentEncoder := ZnPercentEncoder new.
	percentEncoder characterEncoder: ZnNullEncoder new.
	queryString := WriteStream with: String new.
	infoHashCollection
		withIndexDo: [ :infoHash :index | 
			queryString
				nextPutAll: 'info_hash=';
				nextPutAll: (percentEncoder encode: (infoHash asByteArrayOfSize: 20) asString).
			index = infoHashCollection size
				ifFalse: [ queryString nextPut: $& ] ].
	aStream nextPutAll: queryString contents.