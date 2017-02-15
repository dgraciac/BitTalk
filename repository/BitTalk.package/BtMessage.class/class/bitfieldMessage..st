messages
bitfieldMessage: bitfield 
	|  codedMessage |	
	codedMessage := self new.
	codedMessage
		type: BitfieldMessageCode;
		payload: (BtBitfieldPayload new bitfield: bitfield).
	^codedMessage