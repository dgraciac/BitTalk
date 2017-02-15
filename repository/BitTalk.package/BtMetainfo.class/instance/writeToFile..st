metainfo
writeToFile: fileReference
	(FileStream newFileNamed: fileReference pathString )
		binary;
		nextPutAll: self bencoded;
		close