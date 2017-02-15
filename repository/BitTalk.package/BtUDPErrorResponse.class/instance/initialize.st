initialize-release
initialize
	super initialize.
	message := ByteString new.
	transaction actionCode: BtUDPTransaction errorActionCode .