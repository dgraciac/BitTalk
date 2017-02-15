operations
newGET: getPath query: query
	| httpGET |
	httpGET := WriteStream with: String new.
	httpGET
		nextPutAll: 'GET ';
		nextPutAll: getPath;
		nextPutAll: '?';
		nextPutAll: query.
	httpGET
		nextPutAll: ' HTTP/1.1';
		nextPutAll: String crlf;
		nextPutAll: 'User-Agent: BitTalk';
		nextPutAll: String crlf;
		nextPutAll: 'Accept-Encoding: gzip';
		nextPutAll: String crlf;
		nextPutAll: 'Connection: close';
		nextPutAll: String crlf;
		nextPutAll: 'Host: ';
		nextPutAll: domain name;
		nextPutAll: ':';
		nextPutAll: port asString;
		nextPutAll: String crlf;
		nextPutAll: 'Accept: text/plain;charset=utf-8';
		nextPutAll: String crlf;
		nextPutAll: String crlf.
	^ httpGET contents