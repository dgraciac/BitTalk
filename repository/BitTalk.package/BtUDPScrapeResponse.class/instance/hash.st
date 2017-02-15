comparing
hash
	| stream |
	stream := WriteStream with: ByteArray new.
	stream
		nextPutAll: super hash asByteArray;
		nextPutAll: scrapeTorrentStatCollection hash asByteArray.
	^ stream contents hash