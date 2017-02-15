*BitTalk
decodeUDPScrapeResponse
	|  packet |
	packet:=BtUDPScrapeResponse new.
	packet transaction: self decodeUDPTransaction .

	[self atEnd] 
		whileFalse: [ packet scrapeTorrentStatCollection add: (self decodeUDPScrapeTorrentStat )].	
	 ^packet