*BitTalk
decodeUDPConnectResponse
	|  packet |
	packet:=BtUDPConnectResponse new.
	packet 
		transaction: self decodeUDPTransaction ;
		connectionID: (self decodeIntegerOfSize: 8).
	 ^packet