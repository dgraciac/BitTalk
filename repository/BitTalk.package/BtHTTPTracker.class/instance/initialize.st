initialize-release
initialize
	super initialize.
	announceRequest:= BtHTTPAnnounceQuery new.
	announceResponse:= BtHTTPAnnounceResponseBody new.
	announceResponse failureReason: 'initialized'.
	scrapeRequest:= BtHTTPScrapeQuery new.
	scrapeResponse:= BtHTTPScrapeResponseBody new.