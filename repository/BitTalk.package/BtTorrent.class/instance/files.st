piece control
files
	^torrentLock critical: [
		metainfo isMultipleFileMode 
			ifTrue:[
				metainfo files inject: OrderedCollection new into: [ :x :y | 
					| file |
					file:=(y at: 'path') inject: self path into: [ :z :w | z / w].
					x add: file; yourself. 
				] 			  
			]
			ifFalse:[OrderedCollection with: self path ].		  
	]. 