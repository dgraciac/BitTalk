operations
delete
	torrentLock critical: [ self files do: [ :file | file ensureDelete ] ]