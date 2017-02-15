instance creation
from: aDictionary
	| krpc |
	krpc := self new.
	aDictionary associationsDo: [ :association | krpc add: association ].
	^ krpc