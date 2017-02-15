operations
readOffset: offset amount: amount
	|  fileIndex fileOffset filesToRead remaining block fileReference |
	self checkOffset: offset amount: amount.	
	fileIndex:= self firstFileIndex: offset.	
	fileOffset:= self firstFileOffset: offset.	
	filesToRead:= self filesToReadFirst: fileIndex offset: fileOffset amount: amount.
	filesToRead ifNil: [ ^nil ].
		
	remaining := amount.
	fileIndex := 1.
	block:= WriteStream with: ByteArray new.	
	[remaining > 0]
		whileTrue: [
			fileReference := (filesToRead at: fileIndex) reference .
			fileReference readStreamDo: [ :x | 
				x binary.
				x skip: fileOffset .
				[remaining > 0 and:[x atEnd not]]
					whileTrue:[
						|chunk|
						chunk:=x next: remaining.
						block nextPutAll: chunk.
						remaining := remaining - (chunk size).	
					].			
				x atEnd
					ifTrue:[
						fileIndex := fileIndex + 1.
						fileOffset := 0.
					] ifFalse:[fileOffset := x position ].
			]. 							
		].							
	^block contents