instance-creation
newID
	^Random new nextInt: (2 raisedTo: 32) - 1 