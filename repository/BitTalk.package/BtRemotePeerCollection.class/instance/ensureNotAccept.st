operations
ensureNotAccept
	self
		do: [ :peer | 
			peer isAccepted
				ifTrue: [ peer notAccept ] ]