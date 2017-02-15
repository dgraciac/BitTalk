converting-arrays
asByteArray
	| stream |
	stream:= WriteStream with: ByteArray new.
	stream nextPutAll: super asByteArray . 
	scrapeTorrentStatCollection do: [:x | stream nextPutAll: x asByteArray ].
	^stream contents