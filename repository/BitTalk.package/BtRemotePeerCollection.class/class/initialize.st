initialize-release
initialize
	super initialize.
	CompleteSortBlock := [ :a :b | a downloadRate >= b downloadRate ].
	NotCompleteSortBlock := [ :a :b | a uploadRate >= b uploadRate ].
	CompleteMode := 0.
	NotCompleteMode := 1