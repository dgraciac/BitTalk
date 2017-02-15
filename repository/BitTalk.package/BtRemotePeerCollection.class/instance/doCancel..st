enumerating
doCancel: blockRequest
	self do: [ :peer | peer cancel: blockRequest ]