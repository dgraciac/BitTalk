instance creation
from: aDictionary
	| metainfo |
	metainfo := self new.
	aDictionary associationsDo: [ :association | metainfo add: association ].
	^ metainfo