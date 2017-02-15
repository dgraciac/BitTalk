tests-accessing
testDelete
	| database |
	database:=BtDatabase new.
	database location: location1 .
	self assert: database location exists.
	database delete.
	self deny: location1 exists.