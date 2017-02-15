operations
disableDHT
	bytes at: 8 put: ((bytes at: 8) bitAnd: 254)