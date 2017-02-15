tests-operations
testCheckPieces
	| pieceLength content contentA contentB |
	pieceLength := 10.
	fileA := torrentLocation1 / 'fileA'.
	fileB := torrentLocation1 / 'fileB'.
	content := '123456' asByteArray.
	torrentLocation2
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: content.
			x truncate: x position ].
	torrent2 := BtTorrent new.
	torrent2
		metainfo:
			(BtMetainfo new
				buildOn: torrentLocation2 pieceLength: pieceLength;
				yourself).
	torrent2 location: sharing.
	torrent2 checkPieces.
	self assert: (torrent2 bitfield at: 0) = 1.
	contentA := '123' asByteArray.
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	contentB := '456' asByteArray.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	torrent1 := BtTorrent new.
	torrent1
		metainfo:
			(BtMetainfo new
				buildOn: torrentLocation1 pieceLength: pieceLength;
				yourself).
	torrent1 location: sharing.
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 1.
	fileB ensureDelete.
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 0.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	fileA ensureDelete.
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 0.
	fileB ensureDelete.
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 0.
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 1.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: (ByteArray new: 2).
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 0.
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: (ByteArray new: 2).
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 0.
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '457' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: (torrent1 bitfield at: 0) = 0.
	content := '12345678901' asByteArray.
	torrentLocation2
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: content.
			x truncate: x position ].
	torrent2 := BtTorrent new.
	torrent2
		metainfo:
			(BtMetainfo new
				buildOn: torrentLocation2 pieceLength: pieceLength;
				yourself).
	torrent2 location: sharing.
	torrent2 checkPieces.
	self assert: ((torrent2 bitfield at: 0) = 1 and: [ (torrent2 bitfield at: 1) = 1 ]).
	torrentLocation2
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '1234567890' asByteArray.
			x truncate: x position ].
	torrent2 checkPieces.
	self assert: ((torrent2 bitfield at: 0) = 1 and: [ (torrent2 bitfield at: 1) = 0 ]).
	torrentLocation2
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'xxxxxxxxxx1' asByteArray.
			x truncate: x position ].
	torrent2 checkPieces.
	self assert: ((torrent2 bitfield at: 0) = 0 and: [ (torrent2 bitfield at: 1) = 1 ]).
	torrentLocation2
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '123456789xx' asByteArray.
			x truncate: x position ].
	torrent2 checkPieces.
	self assert: ((torrent2 bitfield at: 0) = 0 and: [ (torrent2 bitfield at: 1) = 0 ]).
	contentA := '1234567890' asByteArray.
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	contentB := '12' asByteArray.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	torrent1 := BtTorrent new.
	torrent1
		metainfo:
			(BtMetainfo new
				buildOn: torrentLocation1 pieceLength: pieceLength;
				yourself).
	torrent1 location: sharing.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 1 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileB ensureDelete.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 1 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	fileA ensureDelete.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'x' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA ensureDelete.
	fileB ensureDelete.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '123456789x' asByteArray.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'x2' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '123456789' asByteArray.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'x2' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '123456789' asByteArray.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '12' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	contentA := '12345678' asByteArray.
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	contentB := '1234' asByteArray.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	torrent1 := BtTorrent new.
	torrent1
		metainfo:
			(BtMetainfo new
				buildOn: torrentLocation1 pieceLength: pieceLength;
				yourself).
	torrent1 location: sharing.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 1 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileB ensureDelete.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentB.
			x truncate: x position ].
	fileA ensureDelete.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '1234567' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA ensureDelete.
	fileB ensureDelete.
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '12' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 1 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: contentA.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '12xx' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 1 and: [ (torrent1 bitfield at: 1) = 0 ]).
	fileA ensureDelete.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'xx34' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'xxxxxxxx' asByteArray.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'xx34' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '1234567' asByteArray.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'xx34' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ]).
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x truncate: x position ].
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: 'xx34' asByteArray.
			x truncate: x position ].
	torrent1 checkPieces.
	self assert: ((torrent1 bitfield at: 0) = 0 and: [ (torrent1 bitfield at: 1) = 1 ])