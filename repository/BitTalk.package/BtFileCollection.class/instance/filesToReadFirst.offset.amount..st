private - operations
filesToReadFirst: fileIndex offset: offset amount: amount
	| remaining filesToAccess |
	remaining := amount + offset.
	filesToAccess := OrderedCollection new.
	[ remaining > 0 ]
		whileTrue: [ 
			| file fileSize fileReference |
			file := self at: fileIndex.
			fileReference := file reference.
			(fileReference exists not
				or: [ 
					fileSize := fileReference size.
					fileSize < remaining and: [ fileSize ~= file finalSize ] ])
				ifTrue: [ ^ nil ].
			remaining := remaining - fileSize.
			filesToAccess add: file.
			fileIndex := fileIndex + 1 ].
	^ filesToAccess