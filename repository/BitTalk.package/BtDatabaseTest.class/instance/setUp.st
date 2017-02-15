running
setUp
	BtDatabase initialize .
	testsDirectory:=FileSystem workingDirectory / 'BitTalkTests' .  
	testsDirectory ensureCreateDirectory.
	location1:=testsDirectory / 'database1'.
	location2:=testsDirectory / 'database2'.
	metainfoFile1:= testsDirectory / 'metainfo1.torrent'.