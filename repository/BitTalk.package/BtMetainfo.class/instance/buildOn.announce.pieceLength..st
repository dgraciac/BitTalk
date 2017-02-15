metainfo
buildOn: path announce: announce pieceLength: pieceLength
	self
		keysAndValuesRemove: [ :x :y | true ];
		at: 'announce' put: announce;
		at: 'created by'
			put: Smalltalk version , '. Package: ' , self class package name asString , '. Class: ' , self class asString;
		at: 'creation date' put: DateAndTime now asUnixTime;
		at: 'encoding' put: 'ASCII';
		buildInfoDictionaryOn: path pieceLength: pieceLength