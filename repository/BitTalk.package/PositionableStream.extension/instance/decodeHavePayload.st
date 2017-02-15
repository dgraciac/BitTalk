*BitTalk
decodeHavePayload
	^ BtHavePayload new index: (self decodeIntegerOfSize: 4)