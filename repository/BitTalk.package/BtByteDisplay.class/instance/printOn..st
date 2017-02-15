printing
printOn: aStream
	| stringStream |
	stringStream := WriteStream with: String new.
	stringStream
		nextPutAll: self properAmount asString;
		nextPutAll: ' ';
		nextPutAll: self properPrefix;
		nextPutAll: ByteSymbol.
	aStream nextPutAll: stringStream contents