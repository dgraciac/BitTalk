private - operations
filesToWriteFirst: fileIndex offset: offset amount: amount
	|  remaining filesToAccess |
	remaining:= amount + offset.
	filesToAccess:= OrderedCollection new.
	[remaining > 0]
		whileTrue:[
			|file|
			file:= self at: fileIndex.
			remaining := remaining - (file finalSize).
			filesToAccess add: file.
			fileIndex := fileIndex + 1.	
		].
	^filesToAccess 