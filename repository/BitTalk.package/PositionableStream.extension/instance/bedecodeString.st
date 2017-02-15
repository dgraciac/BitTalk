*BitTalk
bedecodeString
	| length |
	length := ((self upTo: $: asInteger) asString trimRight: [ :x | x isDigit not ]) asInteger.
	^ (self next: length) asString