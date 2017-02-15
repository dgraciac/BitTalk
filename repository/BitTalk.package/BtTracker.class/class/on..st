instance creation
on: aZnUrl
	| tracker |
	(ValidSchemes includes: aZnUrl scheme)
		ifFalse: [ BtBadScheme signal: 'invalid scheme' ].
	tracker := aZnUrl scheme = #http
		ifTrue: [ BtHTTPTracker new ]
		ifFalse: [ BtUDPTracker new ].
	^ tracker
		domain: (BtNamedDomain new name: aZnUrl host);
		port: aZnUrl port;
		path: aZnUrl path;
		yourself