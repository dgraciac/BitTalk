*BitTalk
decodeUDPAnnounceResponse
	|  packet |
	packet:=BtUDPAnnounceResponse new.
	packet 
		transaction: self decodeUDPTransaction ;
		interval: (self decodeIntegerOfSize: 4) ;
		leechers: (self decodeIntegerOfSize: 4) ;
		seeders: (self decodeIntegerOfSize: 4) .
	[self atEnd] 
		whileFalse: [
			|node domain|
			node:= BtNode new.
			domain:=BtDomain new address: (self decodeIntegerOfSize: 4).
			node domain: domain.
			node port: (self decodeIntegerOfSize: 2).	
			packet nodeCollection add: node.	
		].	
	 ^packet