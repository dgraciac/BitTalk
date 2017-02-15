running
setCase2	
	fileA
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '1234' asByteArray.
			x truncate: x position ].
	btFileA := BtFile new
		finalSize: 4;
		reference: fileA.
	fileB
		writeStreamDo: [ :x | 
			x binary.
			x nextPutAll: '56' asByteArray.
			x truncate: x position ].
	btFileB := BtFile new
		finalSize: 4;
		reference: fileB.
	fileCollection := BtFileCollection withAll: (OrderedCollection with: btFileA with: btFileB)