peer discovery
setMultitrackerMode
	torrentLock
		critical: [ 
			metainfo supportMultitracker
				ifFalse: [ self error: 'Metainfo not supporting multitracker mode' ]
				ifTrue: [ isInMultitrackerMode := true ] ]