instance-creation
newScrape
	^ self new
		actionCode: ScrapeActionCode;
		id: self newID