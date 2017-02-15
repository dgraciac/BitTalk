tests-accessing
testLocation
	| database     oldChildren oldLocation newLocation |
	location1 ensureDeleteAll .
	self deny: location1 exists.
	
	database:=BtDatabase new.
	database location: location1 .
	self assert: ((location1 = database location) and:[location1 exists]).
	oldChildren:= location1 children .
	oldLocation:= location1 parent / (location1 basename).
	newLocation:= location1 parent / (location2 basename).
	database location: location2 .
	self assert: newLocation = database location .
	self assert: oldLocation exists not .
	self assert: newLocation exists .
	self assert: (newLocation children) = oldChildren.
	
	oldChildren:= location2 children .
	oldLocation:= location2 parent / (location2 basename).
	newLocation:= location2 parent / (location2 basename).
	database location: location2 .
	self assert: newLocation = database location .
	self assert: oldLocation exists .
	self assert: newLocation exists .
	self assert: (newLocation children) = oldChildren.