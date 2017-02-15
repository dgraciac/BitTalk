*BitTalk
decodeBitfieldPayload: length
	^ BtBitfieldPayload new bitfield: (BtBitfield new: length * 8 with: (self next: length))