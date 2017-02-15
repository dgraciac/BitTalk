tests
testInverseFunction
	| int string list dict |
	int:= 12345.
	string:= 'hello world'.
	list:= OrderedCollection new.
	list add: 12345; add: string.
	dict:= Dictionary new.
	dict at: string put: int.
	self assert: int = int bencoded bedecoded.
	self assert: string = string bencoded bedecoded.
	self assert: list = list bencoded bedecoded . 
	self assert: dict = dict bencoded bedecoded .