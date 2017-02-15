instance creation
from: aDictionary
	| announceResponse |
	announceResponse := self new.
	aDictionary associationsDo: [ :association | announceResponse add: association ].
	^ announceResponse