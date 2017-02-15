initialize-release
initialize
	super initialize.
	ConnectActionCode := 0.
	AnnounceActionCode := 1.
	ScrapeActionCode := 2.
	ErrorActionCode := 3.
	ActionCodes := { ConnectActionCode . AnnounceActionCode . ScrapeActionCode . ErrorActionCode  }.	