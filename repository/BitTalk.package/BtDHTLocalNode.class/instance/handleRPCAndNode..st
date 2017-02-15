operations
handleRPCAndNode: anArray
"Eliminar transactionID en uso"
	| rpc node |
	rpc:= anArray first.
	node:= anArray second.