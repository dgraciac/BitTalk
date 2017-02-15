instance creation
fromFileDictionaries: fileDictionaries at: top
	^ BtFileCollection
		withAll:
			(fileDictionaries
				collect: [ :fileDictionary | 
					| file |
					file := BtFile new.
					file
						finalSize: (fileDictionary at: 'length');
						reference: ((fileDictionary at: 'path') inject: top into: [ :currentPath :segment | currentPath / segment ]);
						yourself ])