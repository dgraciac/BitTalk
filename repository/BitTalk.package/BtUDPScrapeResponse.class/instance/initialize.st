initialize-release
initialize
	super initialize.
	scrapeTorrentStatCollection := OrderedCollection new.
	transaction actionCode: BtUDPTransaction scrapeActionCode .