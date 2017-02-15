tests
testEncoding
	self assert: BtMessage keepAliveMessage asByteArray = (ByteArray new: 4).
	self assert: BtMessage chokeMessage asByteArray = #[0 0 0 1 0].
	self assert: BtMessage unchokeMessage asByteArray = #[0 0 0 1 1].
	self assert: BtMessage interestedMessage asByteArray = #[0 0 0 1 2].
	self assert: BtMessage notInterestedMessage asByteArray = #[0 0 0 1 3].
	self assert: (BtMessage haveMessage: 25) asByteArray = #[0 0 0 5 4 0 0 0 25].
	self assert: (BtMessage bitfieldMessage: (BtBitfield new: 10 with: #[152 236])) asByteArray = #[0 0 0 3 5 152 236].
	self
		assert:
			(BtMessage requestMessage: 523 begin: 723 length: 16000) asByteArray
				= (#[0 0 0 13 6] , (523 asByteArrayOfSize: 4) , (723 asByteArrayOfSize: 4) , (16000 asByteArrayOfSize: 4)).
	self
		assert:
			(BtMessage pieceMessage: 523 begin: 723 block: (ByteArray new: 16000)) asByteArray
				= (#[0 0 62 137 7] , (523 asByteArrayOfSize: 4) , (723 asByteArrayOfSize: 4) , (ByteArray new: 16000)).
	self
		assert:
			(BtMessage cancelMessage: 523 begin: 723 length: 16000) asByteArray
				= (#[0 0 0 13 8] , (523 asByteArrayOfSize: 4) , (723 asByteArrayOfSize: 4) , (16000 asByteArrayOfSize: 4)).
	self assert: (BtMessage portMessage: 25893) asByteArray = (#[0 0 0 3 9] , (25893 asByteArrayOfSize: 2))