tests
testAsString
	| announceRequest correctQuery |
	announceRequest:=BtHTTPAnnounceQuery new.
	announceRequest 
		compact: 1;
		downloaded: 0;
		uploaded: 0;
		event: announceRequest class startedEvent ;
		infoHash: 41879417;
		node: (BtNode new domain: (BtDomain new address: 2527625757); port: 6881) ;
		key: 414417 ;
		left: 0;
		noPeerID: 1 ;
		peerID: 9841848541 ;
		trackerID: 187187414 ;
		numWant: 50.
		
	correctQuery:= 'trackerid=%0B%28%40%D6&event=started&ip=150.168.130.29&key=%06R%D1&numwant=50&info_hash=%02%7F%07y&peer_id=%02J%9E%B0%DD&port=6881&uploaded=0&downloaded=0&left=0&compact=1&no_peer_id=1'.
	self assert: announceRequest asString = correctQuery .	
		