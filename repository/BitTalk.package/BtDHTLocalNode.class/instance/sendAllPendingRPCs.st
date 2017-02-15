operations
sendAllPendingRPCs	
	| rpc |
	[outQueue isEmpty] 
		whileFalse:[self sendNextRPC ].
		 
	[(rpc:=outQueue nextOrNil ) isNil ] 
		whileFalse:[
			self send
		]