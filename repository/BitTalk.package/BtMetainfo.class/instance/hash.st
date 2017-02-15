comparing
hash
	"Hash is reimplemented because = is implemented."

	| infoDictionary |
	infoDictionary := self infoDictionary.
	^ infoDictionary ifNil: [ nil hash ] ifNotNil: [ (SHA1 hashStream: infoDictionary bencoded readStream) asInteger ]