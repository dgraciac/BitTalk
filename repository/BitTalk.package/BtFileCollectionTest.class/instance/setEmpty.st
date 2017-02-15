running
setEmpty
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x truncate: x position ].
	btFileA := BtFile new
		finalSize: 4;
		reference: fileA.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x truncate: x position ].
	btFileB := BtFile new
		finalSize: 4;
		reference: fileB.
	fileCollection := BtFileCollection withAll: (OrderedCollection with: btFileA with: btFileB)