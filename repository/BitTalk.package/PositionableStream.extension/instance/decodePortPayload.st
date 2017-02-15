*BitTalk
decodePortPayload
	^ BtPortPayload new port: (self decodeIntegerOfSize: 2)