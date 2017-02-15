tests
testDecoding
	self
		assert: #[0 0 0 0] decodeMessage = BtMessage keepAliveMessage;
		assert: #[0 0 0 1 0] decodeMessage = BtMessage chokeMessage;
		assert: #[0 0 0 1 1] decodeMessage = BtMessage unchokeMessage;
		assert: #[0 0 0 1 2] decodeMessage = BtMessage interestedMessage;
		assert: #[0 0 0 1 3] decodeMessage = BtMessage notInterestedMessage;
		assert: #[0 0 0 5 4 255 255 255 255] decodeMessage = (BtMessage haveMessage: #[255 255 255 255] asInteger);
		assert: #[0 0 0 3 5 0 0] decodeMessage = (BtMessage bitfieldMessage: (BtBitfield new: 16));
		assert: #[0 0 0 13 6 0 0 0 1 0 0 0 7 0 0 0 25] decodeMessage = (BtMessage requestMessage: 1 begin: 7 length: 25);
		assert:
				(#[0 0 0 34 7 0 0 0 1 0 0 0 7] , (ByteArray new: 25)) decodeMessage
						= (BtMessage pieceMessage: 1 begin: 7 block: (ByteArray new: 25));
		assert: #[0 0 0 13 8 0 0 0 1 0 0 0 7 0 0 0 25] decodeMessage = (BtMessage cancelMessage: 1 begin: 7 length: 25);
		assert: #[0 0 0 3 9 255 255] decodeMessage = (BtMessage portMessage: #[255 255] asInteger)