accessing
metainfoFile: newMetainfoFile
	location isNil 
		ifTrue:[self error: 'location not exists'] 
		ifFalse:[
			| oldMetainfoFile |
			oldMetainfoFile:=location children detect:[:x| x isTorrent] ifNone:[nil].
			oldMetainfoFile isNotNil 
				ifTrue:[oldMetainfoFile ensureDelete ].
			newMetainfoFile copyTo: (location / (newMetainfoFile basename))
		] 