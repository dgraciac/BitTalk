private - operations
firstFileIndex: offset
	| fileIndex sum |
	sum := 0.
	fileIndex := 1.
	[ sum <= offset ]
		whileTrue: [ 
			sum := sum + (self at: fileIndex) finalSize.
			fileIndex := fileIndex + 1 ].
	^ fileIndex - 1