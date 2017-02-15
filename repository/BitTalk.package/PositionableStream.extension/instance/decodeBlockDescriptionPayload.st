*BitTalk
decodeBlockDescriptionPayload
	^ BtBlockDescriptionPayload new
		index: (self decodeIntegerOfSize: 4);
		begin: (self decodeIntegerOfSize: 4);
		length: (self decodeIntegerOfSize: 4)