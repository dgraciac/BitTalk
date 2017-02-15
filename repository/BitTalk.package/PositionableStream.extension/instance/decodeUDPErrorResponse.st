*BitTalk
decodeUDPErrorResponse
	|  packet |
	packet:=BtUDPErrorResponse new.
	packet 
		transaction: self decodeUDPTransaction ;
		message: self upToEnd asString .
	 ^packet