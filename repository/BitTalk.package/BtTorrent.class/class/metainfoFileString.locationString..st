instance creation
metainfoFileString: aString1 locationString: aString2
	| metainfoFile location metainfo |
	metainfoFile := aString1 asFileReference.
	location := aString2 asFileReference.
	metainfo := BtMetainfo
		from:
			(metainfoFile
				readStreamDo: [ :x | 
					x
						binary;
						bedecoded ]).
	^ BtTorrent metainfo: metainfo location: location