printing
printOn: aStream
	torrentLock critical: [
		metainfo 
			ifNil: [ super printOn: aStream ]
		 	ifNotNil: [ aStream nextPutAll: metainfo name ] 
	]