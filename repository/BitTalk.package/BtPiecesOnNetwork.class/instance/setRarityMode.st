sorting
setRarityMode
	collection sortBlock: [ :a :b | a rarestOrEqualThan: b ].
	mode := RarityMode