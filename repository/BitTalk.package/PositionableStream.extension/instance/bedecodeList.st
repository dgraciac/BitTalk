*BitTalk
bedecodeList
	| list |
	self next.
	list := OrderedCollection new.
	[ self peek asCharacter ~= $e ] whileTrue: [ list add: self bedecoded ].
	self next.
	^ list