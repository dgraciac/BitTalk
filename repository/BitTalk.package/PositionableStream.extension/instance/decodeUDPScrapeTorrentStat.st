*BitTalk
decodeUDPScrapeTorrentStat
	| scrapeTorrentStat  |
	scrapeTorrentStat:=BtUDPScrapeTorrentStat new.
	scrapeTorrentStat
		seeders: (self decodeIntegerOfSize: 4) ;
		completed: (self decodeIntegerOfSize: 4) ;
		leechers: (self decodeIntegerOfSize: 4) .
	^scrapeTorrentStat 