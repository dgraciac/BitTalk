converting-arrays
asByteArray
	| maxTorrents infoHashCollectionSize stream |
	maxTorrents:=(BtUDPTracker maxTorrentsScraped).
	infoHashCollectionSize:= infoHashCollection size.
	infoHashCollectionSize > maxTorrents
		ifTrue:[BtMaxTorrentsScrapedExceeded signal].
	stream:= WriteStream with: ByteArray new.
	stream nextPutAll: super asByteArray .
	infoHashCollection do: [:infoHash | stream nextPutAll: (infoHash asByteArrayOfSize: 20) ].
	^stream contents	