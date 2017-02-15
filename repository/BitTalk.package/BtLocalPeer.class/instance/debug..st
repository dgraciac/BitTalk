accessing
debug: aBoolean
	super debug: aBoolean .
	torrents do:[:t| t debug: aBoolean].