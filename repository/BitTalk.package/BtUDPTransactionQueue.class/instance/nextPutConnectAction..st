private
nextPutConnectAction: aTransaction
	(items anySatisfy: [ :x | x actionCode = BtUDPTransaction connectActionCode ])
		ifFalse: [ items add: aTransaction ]