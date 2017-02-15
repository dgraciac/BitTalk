instance-creation
newAnnounce
	^ self new
		actionCode: AnnounceActionCode;
		id: self newID