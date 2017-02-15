peer discovery
updateTrackers: newMetainfo
	| announce |
	newMetainfo supportMultitracker 
		ifTrue: [  
			|announceList|
			announceList:=newMetainfo announceList.			 
			multitracker
				tierCollection: (announceList collect:[:tier | tier collect: [:url | BtTracker on: url asZnUrl ] ]);
				shuffle;
				position: 1;
				tierPosition: 1.
		].
		announce:=newMetainfo announce.
		announce ifNotNil: [ tracker:= (BtTracker on: announce asZnUrl ) ].