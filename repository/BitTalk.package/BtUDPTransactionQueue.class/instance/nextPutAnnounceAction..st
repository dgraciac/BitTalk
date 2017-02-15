private
nextPutAnnounceAction: aTransaction
	(items anySatisfy: [ :x | x actionCode = BtUDPTransaction announceActionCode ])
		ifFalse: [ items add: aTransaction ]