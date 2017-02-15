initialize-release
initializeProcessesNames
	|name|
	name:= self asString.
	listening name: name , ' Listening' .
	managing name: name , ' Managing' .