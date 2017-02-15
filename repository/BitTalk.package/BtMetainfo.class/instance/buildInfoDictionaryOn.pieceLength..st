metainfo
buildInfoDictionaryOn: path pieceLength: pieceLength
	| dict sha1Values fileDictionaries |
	dict := Dictionary new.
	dict at: 'name' put: path basename.
	dict at: 'private' put: 0.
	dict at: 'piece length' put: pieceLength.
	path isFile
		ifTrue: [ 
			path
				readStreamDo: [ :x | 
					x binary.
					dict at: 'length' put: x size	"dict at:'md5sum'put: (MD5 new hashStream: x) hex." ].
			fileDictionaries := OrderedCollection with: (self buildFileDictionaryOn: path at: path) ]
		ifFalse: [ 
			fileDictionaries := path allFiles
				inject: OrderedCollection new
				into: [ :x :y | 
					x
						add: (self buildFileDictionaryOn: y at: path);
						yourself ].
			dict at: 'files' put: fileDictionaries ].
	sha1Values := (BtFileCollection fromFileDictionaries: fileDictionaries at: path) allSha1SplitEvery: pieceLength.
	dict at: 'pieces' put: sha1Values asString.
	self at: 'info' put: dict