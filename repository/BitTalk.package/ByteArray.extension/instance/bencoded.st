*BitTalk
bencoded
	| length |
	length:=self size asString asByteArray.
	^length , $: asInteger asByteArray  , self .