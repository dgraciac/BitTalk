converting-arrays
asByteArray
	| stream |
	stream:=WriteStream with: ByteArray new. 
	blocks do: [:block | stream nextPutAll: block ].
	^ stream contents 