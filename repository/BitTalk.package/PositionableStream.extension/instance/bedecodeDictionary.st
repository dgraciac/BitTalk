*BitTalk
bedecodeDictionary
	| dictionary |
	dictionary := Dictionary new.
	self next.
	[ self peek asCharacter ~= $e ] whileTrue: [ dictionary add: self bedecodeAssociation ].
	self next.
	^ dictionary