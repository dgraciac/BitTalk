tests
testDecoding
	| bytes1 bytes2 bytes3 bytes4 bytes5 bytes6       list1 dict1 dict2 bytes7 bytes8 dict3 bytes0 |
	bytes0:='0:' asByteArray .
	self assert: bytes0 bedecoded = ''.
	
	bytes1:='1:a' asByteArray.
	self assert: bytes1 bedecoded = 'a'.
		
	bytes2:='i0e' asByteArray .
	self assert: bytes2 bedecoded = 0.		
	bytes3:='i12345678910e' asByteArray.
	self assert: bytes3 bedecoded = 12345678910.	
		
	bytes4:='le' asByteArray .
	self assert: bytes4 bedecoded = OrderedCollection new.
	bytes5:='l' asByteArray , bytes1 , bytes2, bytes3, bytes4, 'e' asByteArray .
	list1:=(OrderedCollection withAll: #('a' 0 12345678910)) add: OrderedCollection new; yourself.
	self assert: bytes5 bedecoded = list1.
		
	bytes6:='d' asByteArray , '4:key1' asByteArray , bytes5 , '4:key2' asByteArray ,'de' asByteArray ,'e' asByteArray .
	dict1:=Dictionary new at:'key1'put: list1; at:'key2' put: Dictionary new;yourself.
	self assert: (bytes6 bedecoded = dict1 and:[bytes6 bedecoded class = Dictionary ]).
	
	bytes7:='d' asByteArray , '4:key1' asByteArray , bytes5 , '4:key2' asByteArray ,'de' asByteArray ,'4:info' asByteArray , 'de' asByteArray ,'e' asByteArray .		
	dict2:= Dictionary new at:'key1'put: list1; at:'key2' put: Dictionary new; at:'info' put: Dictionary new; yourself.
	self assert: bytes7 bedecoded = dict2.
	
	bytes8:='d' asByteArray, '4:key1' asByteArray, bytes5, '4:key2' asByteArray,'de' asByteArray,'5:peers' asByteArray, '1:' asByteArray,#[45],'e' asByteArray.
	dict3:= Dictionary new at:'key1'put: list1; at:'key2' put: Dictionary new; at:'peers' put: #[45] asString ; yourself.
	self assert: bytes8 bedecoded = dict3 .
	