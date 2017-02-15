*BitTalk
decodeBlockPayload: length
	^ BtBlockPayload new
		index: (self decodeIntegerOfSize: 4);
		begin: (self decodeIntegerOfSize: 4);
		block: (self decodeBlockOfLength: length - 8)