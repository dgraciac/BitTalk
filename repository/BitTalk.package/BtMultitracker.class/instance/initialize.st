initialize-release
initialize
	super initialize.
	tierCollection:= (OrderedCollection new add: (OrderedCollection new); yourself).
	position:= 1.
	tierPosition:= 1.