mock
mock401Response
	| mock |
	mock := Mock new.
	mock stub contents willReturn: nil.
	mock stub code willReturn: 401.
	^mock