mock
emptyMockResponse
	| mock |
	mock := Mock new.
	mock stub contents willReturn: nil.
	mock stub code willReturn: 502.
	^mock