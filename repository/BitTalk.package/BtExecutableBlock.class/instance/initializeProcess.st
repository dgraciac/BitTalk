initialize-release
initializeProcess
	process ifNotNil: [ self terminate ].
	process := block newProcess .
	process name: name.
	process priority: priority 