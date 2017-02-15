peer discovery
stopUDPTrackerConnections
	tracker isUDP 
		ifTrue:[tracker terminate].
	multitracker tierCollection do:[:tier| tier do:[:aTracker | aTracker isUDP ifTrue:[aTracker terminate]]].