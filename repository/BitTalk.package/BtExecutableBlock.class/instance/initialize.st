initialize-release
initialize
	super initialize.
	name := ''.
	block := [].
	priority := Processor userBackgroundPriority .