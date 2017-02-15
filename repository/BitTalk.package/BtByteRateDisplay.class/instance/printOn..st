printing
printOn: aStream
	| stringStream |
	stringStream := WriteStream with: String new.
	stringStream
		nextPutAll: byteDisplay asString;
		nextPutAll: '/';
		nextPutAll: timeUnitSymbol .
	aStream nextPutAll: stringStream contents