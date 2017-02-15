comparing
priorOrEqualTo: anotherTransaction
	^actionCode = ConnectActionCode or:["actionCode ~= ConnectActionCode and" anotherTransaction actionCode ~= ConnectActionCode] 