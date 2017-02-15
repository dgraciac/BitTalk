accessing
location: newLocation
	torrentLock critical: [  
		location ifNil:[
				metainfo 
					ifNil:[self error: 'metainfo is nil']
					ifNotNil: [
						location := newLocation .
						metainfo isSingleFileMode 
							ifTrue:[self path ensureCreateFile ]
							ifFalse:[self path ensureCreateDirectory ].	
						self updateFileCollection.	  
					] 
			] ifNotNil: [ 
				location ~= newLocation 
					ifTrue:[
						self path moveTo: newLocation / (metainfo name).
						location := newLocation.
						self updateFileCollection.
					].
			].		
	]