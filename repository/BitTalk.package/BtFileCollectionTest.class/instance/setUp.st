running
setUp
	testsDirectory := FileSystem workingDirectory / 'BitTalkTests'.
	testsDirectory ensureCreateDirectory.
	sharing := testsDirectory / 'sharing'.
	sharing ensureCreateDirectory.
	storeName := 'store'.
	storeLocation := sharing / storeName.
	storeLocation ensureCreateDirectory.
	fileNameA := 'fileA'.
	fileNameB := 'fileB'.
	fileA := storeLocation / fileNameA.
	fileA ensureCreateFile.
	fileB := storeLocation / fileNameB.
	fileB ensureCreateFile.
	btFileA := BtFile new.
	btFileB := BtFile new