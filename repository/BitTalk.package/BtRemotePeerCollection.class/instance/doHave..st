enumerating
doHave: index
	self do: [ :peer| peer sendHave: index ]