operations
ensureAcceptFirst: anInteger
	self
		doWithIndex: [ :peer :index | 
			index <= anInteger
				ifTrue: [ 
					peer isAccepted
						ifFalse: [ peer accept ] ]
				ifFalse: [ 
					peer isAccepted
						ifTrue: [ peer notAccept ] ] ]