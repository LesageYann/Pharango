converting
asEntity
	(response isNil or: [ (response at: #result ifAbsent: [ nil ]) isEmptyOrNil ])
		ifTrue: [ ^ nil ].
	^ self entityClass from: (response at: #result) first driver: self