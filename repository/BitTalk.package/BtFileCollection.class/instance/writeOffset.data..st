operations
writeOffset: offset data: aByteArray
	| fileReference remaining fileIndex fileOffset filesToWrite dataToWrite file chunkSize |
	remaining := aByteArray size.
	self checkOffset: offset amount: remaining.
	fileIndex := self firstFileIndex: offset.
	fileOffset := self firstFileOffset: offset.
	filesToWrite := self filesToWriteFirst: fileIndex offset: fileOffset amount: remaining.
	filesToWrite ifNil: [ ^ nil ].
	fileIndex := 1.
	dataToWrite := aByteArray readStream.
	[ remaining > 0 ]
		whileTrue: [ 
			| chunk |
			file := filesToWrite at: fileIndex.
			chunkSize := file finalSize - fileOffset min: remaining.
			chunk := dataToWrite next: chunkSize.
			fileReference := file reference.
			fileReference
				writeStreamDo: [ :x | 
					x
						binary;
						skip: fileOffset;
						nextPutAll: chunk ].
			remaining := remaining - chunkSize.
			fileIndex := fileIndex + 1.
			fileOffset := 0 ]