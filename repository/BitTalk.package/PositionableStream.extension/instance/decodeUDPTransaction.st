*BitTalk
decodeUDPTransaction
	| transaction |
	transaction:=BtUDPTransaction new.
	transaction actionCode: (self decodeIntegerOfSize: 4).
	transaction id: (self decodeIntegerOfSize: 4).
	^transaction