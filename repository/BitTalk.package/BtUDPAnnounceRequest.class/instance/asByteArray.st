converting-arrays
asByteArray
	^ super asByteArray ,
	( infoHash asByteArrayOfSize: 20) ,
	( peerID asByteArrayOfSize: 20) ,
	( downloaded asByteArrayOfSize: 8) , 
	( left asByteArrayOfSize: 8) ,
	( uploaded asByteArrayOfSize: 8) ,
	( event asByteArrayOfSize: 4) ,
	( node domain address asIPv4 ) ,
	( key asByteArrayOfSize: 4) ,
	( numWant asByteArrayOfSize: 4) ,
	( node port asPortNumber ) .