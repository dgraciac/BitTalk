piece control
updateFileCollection
	| fileDictionaries |
	fileDictionaries := metainfo files.
	fileCollection := BtFileCollection fromFileDictionaries: fileDictionaries at: self path.