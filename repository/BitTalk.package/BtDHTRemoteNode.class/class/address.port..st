instance creation
address: anIntegerAddress port: anIntegerPort
	| node |
	node:= self new. 
	node domain address: anIntegerAddress.
	node port: anIntegerPort .
	^ node 