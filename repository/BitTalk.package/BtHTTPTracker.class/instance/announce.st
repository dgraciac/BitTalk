operations
announce
	| httpGET  response |
	httpGET := self newGET: path query: announceRequest asString .
	response:= self sendGET: httpGET .
	self updateAnnounceResponse: response.