initialize-release
initialize
	super initialize.
	FirstConnectionID := (ByteArray readHexFrom: '041727101980') asInteger.