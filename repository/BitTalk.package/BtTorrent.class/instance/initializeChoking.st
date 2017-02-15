initialize-release
initializeChoking
	choking ifNotNil: [ choking terminate ].
	choking := BtExecutableBlock new
		block: [ 
			[ 
			| stream |
			self updateChokingStatus.
			remotePeers doRestartMeasuringRates.
			(Delay forSeconds: 10) wait.
			stream := WriteStream with: 'Choke iteration. Peers accepted: '.
			stream nextPutAll: String cr.
			(remotePeers select: [ :peer | peer isAccepted ])
				do: [ :p | 
					stream
						nextPutAll: p asString;
						nextPutAll: String cr ].
			self log: stream contents.
			Processor yield ] repeat ]