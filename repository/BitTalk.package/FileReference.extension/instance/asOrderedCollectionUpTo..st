*BitTalk
asOrderedCollectionUpTo: topFileReference
	| ordCollect fr |
	ordCollect := OrderedCollection new.
	fr := self.
	[ topFileReference ~= fr ]
		whileTrue: [ 
			ordCollect addFirst: fr basename.
			fr := fr parent ].
	^ ordCollect