instance creation
new: anInteger
	"anInteger is the number of pieces of the torrent"
	^self new: anInteger with: (ByteArray new: (anInteger / 8) ceiling )
