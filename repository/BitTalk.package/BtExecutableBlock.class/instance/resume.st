operations
resume
	process ifNil: [ self initializeProcess ].
	self isScheduled
		ifTrue: [ ^ self ].
	process isTerminated
		ifTrue: [ self initializeProcess ].
	process resume