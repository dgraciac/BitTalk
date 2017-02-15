tests
testEncoding

	|  string1 integer1 integer2 integer3 list1  list2 metainfo1 metainfo2 string0 |
	string0:=''.
	self assert: string0 bencoded = '0:' asByteArray.
	string1:='a'.
	self assert: string1 bencoded = '1:a' asByteArray.
	 
	integer1 := 0.
	self assert: integer1 bencoded = 'i0e' asByteArray.
	integer2:= 00.
	self assert: integer2 bencoded = 'i0e' asByteArray.
	integer3:= 01.
	self assert: integer3 bencoded = 'i1e' asByteArray.
	
	list1:=OrderedCollection new.
	self assert: list1 bencoded = 'le' asByteArray .
	list2:= OrderedCollection new add: string1; add: integer3 ; add: list1; yourself  .
	self assert: list2 bencoded = 'l1:ai1elee' asByteArray .
	
	metainfo1:=Dictionary new at:'a'put: list2 ; yourself.
	self assert: metainfo1 bencoded =  'd1:al1:ai1eleee' asByteArray .
	metainfo2:=Dictionary new at:'0123456789' put: metainfo1 ; yourself.
	self assert: metainfo2 bencoded = 'd10:0123456789d1:al1:ai1eleeee' asByteArray .