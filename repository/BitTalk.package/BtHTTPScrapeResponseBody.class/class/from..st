instance creation
from: aDictionary
	| scrapeResponse |
	scrapeResponse := self new.
	aDictionary associationsDo: [ :association | scrapeResponse add: association ].
	^ scrapeResponse