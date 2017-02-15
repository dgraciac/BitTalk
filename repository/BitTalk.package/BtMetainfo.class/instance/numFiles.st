accessing
numFiles
	^self isSingleFileMode 
		ifTrue:[1]
		ifFalse:[(self infoDictionary at:'files') size]