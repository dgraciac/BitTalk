enumerating
detectLucky
	^ self detect: [ :peer | peer isLucky ] ifNone: [ nil ]