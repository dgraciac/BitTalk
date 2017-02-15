accessing
nextPut: aTransaction
	aTransaction species ~= BtUDPTransaction ifTrue:[self error: 'Bad class'].
	monitor
		critical: [ 
			aTransaction actionCode = BtUDPTransaction announceActionCode
				ifTrue: [ self nextPutAnnounceAction: aTransaction ]
				ifFalse: [ 
					aTransaction actionCode = BtUDPTransaction scrapeActionCode
						ifTrue: [ self nextPutScrapeAction: aTransaction ]
						ifFalse: [ 
							aTransaction actionCode = BtUDPTransaction connectActionCode
								ifTrue: [ self nextPutConnectAction: aTransaction ] ] ].
			monitor signal ].
	^ aTransaction