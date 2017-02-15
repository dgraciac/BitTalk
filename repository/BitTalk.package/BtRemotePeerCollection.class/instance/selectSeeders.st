enumerating
selectSeeders
	^ self select: [ :peer | peer bitfield isComplete ]