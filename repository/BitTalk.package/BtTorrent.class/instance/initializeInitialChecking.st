initialize-release
initializeInitialChecking
	initialChecking ifNotNil: [ initialChecking terminate ].
	initialChecking := BtExecutableBlock new
		block: [
			torrentLock critical: [  
				self checkPieces.
				self log: 'checking complete'.
				self isComplete
					ifTrue: [ 
						self log: 'previous state: already complete'.
						alreadyComplete := true ]
					ifFalse: [ 
						self log: 'previous state: not complete'.
						alreadyComplete := false ].					
			] .		
			checkingFinished signal 
		].