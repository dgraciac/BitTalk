operations
resolveName
	address:= [(NetNameResolver addressForName: name) asInteger ] on: NameLookupFailure do: [:ex | ex return: 0].
