metainfo
buildFileDictionaryOn: file at: storeLocation
	| fileDict |
	fileDict:= Dictionary new.
	file readStreamDo: [ :x | 
		x binary. 
		fileDict at: 'length' put: x size.
		"fileDict at:'md5sum'put: (MD5 new hashStream: x) hex."
		fileDict at: 'path' put: (file asOrderedCollectionUpTo: storeLocation).									
	].
	^fileDict