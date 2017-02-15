initialize-release
initialize
	super initialize.
	items := SortedCollection sortBlock: [ :a :b | a priorOrEqualTo: b ]