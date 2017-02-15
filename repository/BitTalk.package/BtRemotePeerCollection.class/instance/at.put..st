accessing
at: anInteger put: aRemotePeer
	aRemotePeer species ~= BtRemotePeer ifTrue:[self error: 'Bad class'].
	^ super at: anInteger put: aRemotePeer