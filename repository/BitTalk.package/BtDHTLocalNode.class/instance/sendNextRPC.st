operations
sendNextRPC
	"Reservar transactionID"
	| rpc |
	rpc:=outQueue nextOrNil.
	rpc ifNotNil: [  ] 