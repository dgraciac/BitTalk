*BitTalk
asZnUrlScrape
	| string prefix announceWordBeginning lastSlashPosition sufix |
	string := self asString.
	lastSlashPosition := string findLastOccurrenceOfString: '/' startingAt: 1.
	lastSlashPosition = 0
		ifTrue: [ BtSlashNotFound signal ].
	string size > lastSlashPosition
		ifTrue: [ 
			announceWordBeginning := string findAnySubStr: (Array with: BtHTTPTracker announce) startingAt: lastSlashPosition + 1.
			(announceWordBeginning = (string size + 1) or: [ announceWordBeginning ~= (lastSlashPosition + 1) ])
				ifTrue: [ BtAnnounceWordNotFound signal ].
			prefix := string copyFrom: 1 to: lastSlashPosition.
			sufix := string copyFrom: announceWordBeginning + BtHTTPTracker announce size to: string size.
			^ (prefix , BtHTTPTracker scrape , sufix) asZnUrl ]
		ifFalse: [ BtAnnounceWordNotFound signal ]