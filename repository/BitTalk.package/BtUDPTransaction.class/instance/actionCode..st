accessing
actionCode: newCode
	(ActionCodes includes: newCode)
		ifFalse: [ BtWrongActionCode signal: 'newCode has to be any of ', (ActionCodes asString) ].
	actionCode := newCode