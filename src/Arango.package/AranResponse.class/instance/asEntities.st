converting
asEntities
	^ self collectionClass from: (response at: #result) as: self entityClass driver: self driver