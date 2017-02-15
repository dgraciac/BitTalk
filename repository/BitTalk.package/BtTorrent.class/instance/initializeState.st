initialize-release
initializeState
	torrentLock critical: [ 
		uploaded:= BtByteDisplay new.
		lastUploaded:= BtByteDisplay new.
		uploadRate:= BtByteRateDisplay new.
		uploadRateAverage := BtByteRateDisplay new .
		downloaded:= BtByteDisplay new.
		lastDownloaded:= BtByteDisplay new.
		downloadRate := BtByteRateDisplay new.
		downloadRateAverage := BtByteRateDisplay new
	].
	started:= false.
	stopPending:=false.