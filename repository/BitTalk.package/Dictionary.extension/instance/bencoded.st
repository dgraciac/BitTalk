*BitTalk
bencoded
	"This method does not make much sense unless keys are real Strings (though it could work)"

	| sortedStringifiedKeys stream |
	sortedStringifiedKeys := SortedCollection sortBlock: [ :a :b | a asString < b asString ].
	sortedStringifiedKeys addAll: self keys.
	stream := WriteStream with: $d asInteger asByteArray.
	sortedStringifiedKeys
		do: [ :x | 
			stream nextPutAll: x bencoded.
			stream nextPutAll: (self at: x) bencoded ].
	^ stream
		nextPut: $e asInteger;
		contents