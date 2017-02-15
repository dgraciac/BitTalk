private
checkRange: aNodeID
	(aNodeID between: firstID and: lastID)
		ifFalse: [ BtDHTOutOfRange signal ]