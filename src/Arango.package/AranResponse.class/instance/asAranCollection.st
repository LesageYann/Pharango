converting
asAranCollection
	"Be care, it's for return Aran collection and this is not a collection in Pharo. 
	If you want a real collection, use asEntities"

	response ifNil: [ ^ nil ].
	^ AranCollection from: response driver: self