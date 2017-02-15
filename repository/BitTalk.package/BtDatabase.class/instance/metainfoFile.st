accessing
metainfoFile
	^location isNil 
		ifTrue:[nil] 
		ifFalse:[location children detect:[:x| x isTorrent] ifNone:[nil]] 