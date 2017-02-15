accessing
debug: aBoolean
	debug := aBoolean.
	debug
		ifFalse: [ ^ self ].
	tracker debug: aBoolean.
	multitracker tierCollection do: [ :tier | tier do: [ :t | t debug: aBoolean ] ]