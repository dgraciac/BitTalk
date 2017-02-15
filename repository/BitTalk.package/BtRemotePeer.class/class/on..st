instance creation
on: socketStream
	"Create a RemotePeer on a socketStream."
	| remotePeer  |
	remotePeer:= self new socketStream: socketStream binary.
	remotePeer domain: (BtDomain new address: socketStream remoteAddress asInteger ) .
	remotePeer port: socketStream remotePort asInteger . 
	remotePeer setTimeOut.
	^remotePeer