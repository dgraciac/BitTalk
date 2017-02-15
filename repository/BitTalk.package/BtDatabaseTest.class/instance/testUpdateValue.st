tests-accessing
testUpdateValue
	| database attribute value1 value2 |
	database := BtDatabase new.
	database location: location1.
	attribute := 'attribute'.
	value1 := 'value1'.
	value2 := 'value2'.
	self assert: (database select: attribute) isNil.
	database update: attribute value: value1.
	self assert: (database select: attribute) = value1.
	database update: attribute value: value2.
	self assert: (database select: attribute) = value2