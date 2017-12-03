converting
asEntity
	response ifNil: [ ^ nil ].
	^ self entityClass from: (response at: #result) first driver: self