private - operations
dequeueNextRequest
	^ connectionStatusLock
		critical: [ 
			| transaction |
			transaction := transactionQueue peek.
			transaction
				ifNil: [ nil ]
				ifNotNil: [ 
					transaction actionCode = BtUDPTransaction connectActionCode
						ifTrue: [ self connectRequest: transaction ]
						ifFalse: [ 
							transaction actionCode = BtUDPTransaction announceActionCode
								ifTrue: [ self updateAnnounceRequest: transaction ]
								ifFalse: [ 
									transaction actionCode = BtUDPTransaction scrapeActionCode
										ifTrue: [ self updateScrapeRequest: transaction ] ] ] ] ]