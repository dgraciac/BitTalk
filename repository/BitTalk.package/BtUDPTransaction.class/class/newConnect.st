instance-creation
newConnect
	^ self new
		actionCode: ConnectActionCode;
		id: self newID