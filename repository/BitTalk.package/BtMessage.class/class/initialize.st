initialize-release
initialize
	super initialize.
	ChokeMessageCode := 0.
	UnchokeMessageCode := 1.
	InterestedMessageCode := 2.
	NotInterestedMessageCode := 3.
	HaveMessageCode := 4.
	BitfieldMessageCode := 5.
	RequestMessageCode := 6.
	PieceMessageCode := 7.
	CancelMessageCode := 8.
	PortMessageCode := 9.
	ConnectionTimeOut := 120.