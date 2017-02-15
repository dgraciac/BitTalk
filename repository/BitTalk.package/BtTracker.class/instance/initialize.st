initialize-release
initialize
	super initialize.
	path:= ByteString new.
	lastAnnounceResponseTime := nil.