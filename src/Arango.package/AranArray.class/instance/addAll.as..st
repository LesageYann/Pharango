as yet unclassified
addAll: aCollection as: aClass
	aCollection doWithIndex: [ :res :index | self at: index put: (aClass from: res driver: self) ]