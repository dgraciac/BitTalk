running
setUp
	
	testsDirectory:=FileSystem workingDirectory / 'BitTalkTests' .  
	testsDirectory ensureCreateDirectory.
	
	sharing:= testsDirectory / 'sharing'.
	sharing ensureCreateDirectory .
	
	torrentLocation := sharing / 'torrent' .
	torrentLocation ensureCreateDirectory .

	torrentLocation1:= sharing / 'torrent1' .
	torrentLocation2:= sharing / 'torrent2' .	
	
	torrentLocation2 ensureCreateFile .
	torrentLocation1 ensureCreateDirectory .
	

	