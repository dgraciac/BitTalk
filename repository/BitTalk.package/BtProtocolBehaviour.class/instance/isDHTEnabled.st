testing
isDHTEnabled
	| byte |
	byte := bytes at: 8.
	^ (byte bitAt: byte lowBit) = 1