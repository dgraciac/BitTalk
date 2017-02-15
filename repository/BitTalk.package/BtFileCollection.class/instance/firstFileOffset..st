private - operations
firstFileOffset: offset
	| fileIndex sum firstOffset |
	fileIndex := 1.
	sum := 0.
	firstOffset := 0.
	[ sum <= offset ]
		whileTrue: [ 
			firstOffset := offset - sum.
			sum := sum + (self at: fileIndex) finalSize.
			fileIndex := fileIndex + 1 ].
	^ firstOffset