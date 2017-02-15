sorting
setIndexMode
	collection sortBlock: [ :a :b | a lowerOrEqualThan: b ].
	mode := IndexMode