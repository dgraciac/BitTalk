tests-accessing
testMetainfoFile
	| database |
	metainfoFile1 ensureCreateFile.
	metainfoFile1
		writeStreamDo: [ :x | 
			x nextPutAll: 'hello'.
			x truncate: x position ].
	database := BtDatabase new.
	database location: location1.
	self assert: database metainfoFile isNil.
	database metainfoFile: metainfoFile1.
	database metainfoFile readStreamDo: [ :x | self assert: x contents = 'hello' ].
	metainfoFile1
		writeStreamDo: [ :x | 
			x nextPutAll: 'hello world'.
			x truncate: x position ].
	database metainfoFile: metainfoFile1.
	database metainfoFile readStreamDo: [ :x | self assert: x contents = 'hello world' ]