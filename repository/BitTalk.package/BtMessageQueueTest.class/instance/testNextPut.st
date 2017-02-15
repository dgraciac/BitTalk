tests-accessing
testNextPut
	| queue |
	queue := BtMessageQueue new.
	queue nextPut: BtMessage chokeMessage.
	queue nextPut: BtMessage unchokeMessage.
	queue nextPut: BtMessage unchokeMessage.
	self assert: (queue next = BtMessage unchokeMessage and: [ queue isEmpty ]).
	queue nextPut: BtMessage interestedMessage.
	queue nextPut: BtMessage notInterestedMessage.
	queue nextPut: BtMessage notInterestedMessage.
	self assert: (queue next = BtMessage notInterestedMessage and: [ queue isEmpty ]).
	queue nextPut: (BtMessage bitfieldMessage: BtBitfield new).
	queue nextPut: (BtMessage haveMessage: 0).
	queue nextPut: (BtMessage bitfieldMessage: BtBitfield new).
	self assert: (queue next = (BtMessage bitfieldMessage: BtBitfield new) and: [ queue isEmpty ]).
	queue nextPut: (BtMessage requestMessage: 0 begin: 0 length: 1).
	queue nextPut: (BtMessage cancelMessage: 0 begin: 0 length: 1).
	self assert: (queue next = (BtMessage cancelMessage: 0 begin: 0 length: 1) and: [ queue isEmpty ]).
	queue nextPut: (BtMessage portMessage: 5).
	queue nextPut: (BtMessage portMessage: 25).
	self assert: (queue next = (BtMessage portMessage: 25) and: [ queue isEmpty ])