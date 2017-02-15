messages-receive
receiveNext: amount
	| bytes |
	bytes:=socketStream next: amount.
	bytes size ~= amount 
		ifTrue:[BtMessageError signal]
		ifFalse:[^ bytes]